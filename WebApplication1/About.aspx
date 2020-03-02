<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <h3>
        <asp:Button ID="SendBTN" runat="server" OnClick="SendBTN_Click" Text="Send" />
        <asp:TextBox ID="TxtBox1" runat="server"></asp:TextBox>
    </h3>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>
