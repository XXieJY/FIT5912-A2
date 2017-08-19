<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Try.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" media="screen" href="https://cdn.bootcss.com/normalize/7.0.0/normalize.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/styletry.css" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/aboutus.css" />
    <link rel="stylesheet" href="css/commonicon.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="height:100%;">
        <div class="container" id="index-rotator" style="height:100%;">
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ad/adconfig.xml" BackColor="Black"  BorderWidth="1"/>
            </div>
            <!-- 图片轮滚开始-->
             <a class="control prev"></a><a class="control next abs"></a>
                <div class="slider">
                    <ul>
                        <li><img src="images/1.jpg" alt="" /></li>
                        <li><img src="images/2.jpg" alt="Festive collection!!" /></li>
                        <li><img src="images/3.jpg" alt="The ever so delicious cookies now at LovelyBakeStudio" /></li>
                        <li><img src="images/4.jpg" alt="The perfect tea partner any time of the day!!" /></li>
                        <li><img src="images/5.jpg" alt="" /></li>
                    </ul>
                </div>
   
            <script src="js/jquery.min.js"></script>
            <script src="js/YuxiSlider.jQuery.min.js"></script>
            <script>
                $(".slider").YuxiSlider({
                    width: 1000, //容器宽度
                    height: 400, //容器高度
                    control: $('.control'), //绑定控制按钮
                    during: 3000, //间隔4秒自动滑动
                    speed: 600, //移动速度0.8秒
                    mousewheel: true, //是否开启鼠标滚轮控制
                    direkey: true //是否开启左右箭头方向控制
                });
            </script>
    
          <!--图片轮滚结束--> 

            <br />
            <br />
            <br />
           <div class="middle-header-bottom"></div>

          <!--about us 开始-->
          <!--第二部分标题开始-->
           <div class="container clearf">
               <div class="blocktitle">
                   <p style="color: #5d4d43; font-size: 40px; font-weight:bolder">We provide</p>
               </div>
           </div>
          <!--第二部分标题结束-->
        
          <!--第二部分第一块-->    
               <div class ="split item">                      
                     <div class ="auto-style11">
                     <h2 style="color: #5d4d43; font-size: 30px; font-weight:bolder">Catering services:</h2>
                     <br />
                     <p style ="color: #5d4d43; font-size:15px;">Lovely bake Studio offers complete range of 100 % eggless baked products 
                         for catering events put together very attractive display of food that will leave your guest impressed. We take
                         pride in offering innovative baked products with par excellence customer service. Our product range includes 
                         Cakes, Puddings, Baklava, Chocolate fountains, Snacks, Pastries, Dry cakes and much more..  </p>                   
                  </div>

                   <div class ="size3">
                       <div data-animation ="fadeInLeft">
                         <img class ="img-circle" style="padding: 1px;border: 5px solid #cab7ab;margin: 25px;  margin-top: 25px;margin-top: 0px;" 
                             src ="images/11.jpg" width="220" height="210" />
                       </div>
                   </div>
                </div>
        
            <div class ="clearf" />
            <!--第二部分第二块-->    
                <div class ="split item">             
                  <div class ="size9">
                       <div data-animation ="fadeInLeft">
                         <img class ="img-circle" style="padding: 1px;border: 5px solid #cab7ab;margin: 25px;  margin-top: 25px;margin-top: 0px;" 
                             src ="images/22.png" width="220" height="210" />
                       </div>
                   </div>

                     <div class ="auto-style12">
                     <h2 style="color: #5d4d43; font-size: 30px; font-weight:bolder">Distributor Services</h2>
                     <br />
                     <p style ="color: #5d4d43; font-size:15px;">Lovely bake Studio has ventured into distribution of cookies accross north india.
                         At present we have more than 10 distributors and a network of 500 A-class retailers selling our products. 
                         The cookies range comes in the package of 200gm and 75gm in 14 different varieties . 
                         For distributor enquiry do call us on 9915006757 .  </p>                   
                  </div>
                </div>

            <div class ="clearf" />

            <!--第二部分第三块--> 

             <div class ="split item">                      
                     <div class ="auto-style11">
                     <h2 style="color: #5d4d43; font-size: 30px; font-weight:bolder">Corporate Services</h2>
                     <br />
                     <p style ="color: #5d4d43; font-size:15px;">We are pleased to introduce the 'Corporate Gifting' wing of Lovely Bake Studio Our premium
                         gifts are an assortment of Sinful chocolates, Turkish Baklava, Premium Dry cake and Brownies, Theme cakes and flavored Dry Fruits 
                         and much more. In addition we boast of having hundreds of gifting and packing options. ..</p>                   
                  </div>

                   <div class ="size3">
                       <div data-animation ="fadeInLeft">
                         <img class ="img-circle" style="padding: 1px;border: 5px solid #cab7ab;margin: 25px;  margin-top: 25px;margin-top: 0px;" 
                             src ="images/33.jpg" width="220" height="210" />
                       </div>
                   </div>
                </div> 
           <!--about us 结束-->
       </div>

       <div class="sourcecontainer" style="z-index:999;">
            <div class="getSourceItem"><a href="#" style="color:white;" target="_blank">AdRotator</a></div>
            <div class="getSourceItem"><a href="/ass/locked/source.aspx?filename=~/index.aspx" style="color:white;">Master Page</a></div>
       </div>

    
</asp:Content>
