<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ConatactFrom.ascx.cs" Inherits="WebApplication1.ConatactFrom" %>
   <h3>
        <asp:Button ID="SendBTN" runat="server" OnClick="SendBTN_Click" Text="Send" />
        <asp:TextBox ID="TxtBox1" runat="server"></asp:TextBox>
    </h3>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>