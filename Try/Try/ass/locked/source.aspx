<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="source.aspx.cs" Inherits="Try.ass.locked.source" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" media="screen" href="https://cdn.bootcss.com/SyntaxHighlighter/3.0.83/styles/shThemeDefault.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="https://cdn.bootcss.com/SyntaxHighlighter/3.0.83/styles/shCore.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="https://cdn.bootcss.com/normalize/7.0.0/normalize.min.css" />
    <script type="text/javascript" src="https://cdn.bootcss.com/SyntaxHighlighter/3.0.83/scripts/shCore.min.js"></script> 
    <script type="text/javascript" src="https://cdn.bootcss.com/SyntaxHighlighter/3.0.83/scripts/shBrushCSharp.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/SyntaxHighlighter/3.0.83/scripts/shBrushCss.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/SyntaxHighlighter/3.0.83/scripts/shBrushXml.min.js"></script>
    <script type="text/javascript">SyntaxHighlighter.all();</script>
<style type='text/css'>
  .syntaxhighlighter {
    background-color: #F0E9D9 !important;
  }
  .syntaxhighlighter .line.alt1 {
    background-color: #F0E9D9 !important;
  }
  .syntaxhighlighter .line.alt2 {
    background-color: #F0E9D9 !important;
  }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
       <pre class="brush:xml;" runat="server" id="codearea">   
       </pre> 
    </div>
</asp:Content>
