<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ConatactFrom.ascx.cs" Inherits="WebApplication1.ConatactFrom" %>
   <h3>
        
        <asp:TextBox ID="TxtBox1" runat="server"></asp:TextBox>
       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       
    </h3>
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
           <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
           &nbsp;This is Inside the UpdatePanel
           <br />
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           <br />
       </ContentTemplate>
</asp:UpdatePanel>
<p>
    This is Outside The UpdatePanel will refresh all web</p>
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
<br />
<br />

   