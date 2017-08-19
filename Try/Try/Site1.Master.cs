using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Try
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected LinkedList<DateTime> dsHolidays;

        protected void Page_Load(object sender, EventArgs e)
        {
            string calendarswitch = HttpContext.Current.Request.Url.AbsolutePath;
            if (calendarswitch == "/ass/locked/source.aspx")
            {
                this.Calendar1.Visible = false;
                this.eventdetails.Visible = false;
            }
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                this.loginname.InnerText = "Hello" + " " + HttpContext.Current.User.Identity.Name + " " + "٩(๑> ₃ <)۶";
                this.logout.Style.Clear();
            }
            // if (IsPostBack)
            // {
            //     Response.Write("<script>alert('login successful')</script>");
            // }
            if (!IsPostBack)
            {
                Calendar1.VisibleDate = DateTime.Today;
                FillHolidayDataset();
            }
        }

        protected void FillHolidayDataset()
        {
            DateTime firstDate = new DateTime(Calendar1.VisibleDate.Year,
                Calendar1.VisibleDate.Month, 1);
            DateTime lastDate = GetFirstDayOfNextMonth();
            dsHolidays = GetCurrentMonthData(firstDate, lastDate);
        }

        protected DateTime GetFirstDayOfNextMonth()
        {
            int monthNumber, yearNumber;
            if (Calendar1.VisibleDate.Month == 12)
            {
                monthNumber = 1;
                yearNumber = Calendar1.VisibleDate.Year + 1;
            }
            else
            {
                monthNumber = Calendar1.VisibleDate.Month + 1;
                yearNumber = Calendar1.VisibleDate.Year;
            }
            DateTime lastDate = new DateTime(yearNumber, monthNumber, 1);
            return lastDate;
        }

        protected LinkedList<DateTime> GetCurrentMonthData(DateTime firstDate,
             DateTime lastDate)
        {
            LinkedList<DateTime> dsMonth = new LinkedList<DateTime>();

            //try to connect db and fetch date events
            SqlConnection con;
            string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(ConString);
            con.Open();
            string sql = "select [date] from [dbo].[Date] where [date]>=" + "'" + firstDate + "'" + " and [date]<=" + "'" + lastDate + "';";
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                dsMonth.AddLast((DateTime)dr["date"]);
            }
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(com);
            return dsMonth;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime nextDate;
            if (dsHolidays != null)
            {
                foreach (DateTime dr in dsHolidays)
                {
                    nextDate = dr;
                    if (nextDate == e.Day.Date)
                    {
                        e.Cell.BackColor = System.Drawing.Color.Pink;
                    }
                }
            }
        }
        
        protected void Calendar1_VisibleMonthChanged(object sender,
            MonthChangedEventArgs e)
        {
            FillHolidayDataset();
        }

        protected void Calendar1_Init(object sender, EventArgs e)
        {
            string eventDetails = "";
            //string nextDay = Calendar1.SelectedDate.AddDays(1).ToShortDateString();
            DateTime selectedDay = Calendar1.TodaysDate;

            SqlConnection con;
            string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(ConString);
            con.Open();
            string sql = "select [event] from [dbo].[Date] where [date]=" + "'" + selectedDay + "';";
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                eventDetails = (string)dr["event"];
            }

            if (eventDetails != null && eventDetails != "")
            {
                //do nothing
            }
            else
                eventDetails = "NO event for today!";

            eventcontent.InnerText = eventDetails;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            eventcontent.InnerText = GetEventDetails(e);
            FillHolidayDataset();
        }

        protected string GetEventDetails(EventArgs e)
        {
            string eventDetails = "";
            //string nextDay = Calendar1.SelectedDate.AddDays(1).ToShortDateString();
            DateTime selectedDay = Calendar1.SelectedDate;

            SqlConnection con;
            string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(ConString);
            con.Open();
            string sql = "select [event] from [dbo].[Date] where [date]=" + "'" + selectedDay + "';";
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                eventDetails = (string)dr["event"];
            }

            if (eventDetails != null && eventDetails != "")
            {
                //do nothing
            }
            else
                eventDetails = "NO event for today!";
            return eventDetails;
        }

    }
}