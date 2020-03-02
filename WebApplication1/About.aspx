<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>
<%--In Order to use the ContactFrom we need to register it--%>
<%@ Register Tagprefix="uc" TagName="ContactFrom"  Src="~/ConatactFrom.ascx"%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
<%--Now we need to use the control, in order to use it inside the project  we use an ID taht will  be the name of the control it will hold the avriable and fucntions from the class ContactFrom.ascx.cs--%>
 <uc:ContactFrom ID="cfMessage" Message="Default Scene"  runat ="server"></uc:ContactFrom>
    <asp:Button ID="SendBTN" runat="server" OnClick="SendBTN_Click" Text="Send" />

<%--    We nned have access to the control to retrieve the inf--%>

</asp:Content>
