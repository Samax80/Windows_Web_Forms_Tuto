<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ConatactFrom.ascx.cs" Inherits="WebApplication1.ConatactFrom" %>
   
 <style type="text/css">
     #Background
     {
       position: fixed;
       top: 0px;
       bottom: 0px;
       left: 0px;
       right: 0px;
       overflow: hidden;
       padding: 0;
       margin: 0;
       background-color: #F0F0F0;
       filter: alpha(opacity=80);
       opacity: 0.8;
       z-index: 100000;

     }
     
     #Progress
     {
         position: fixed;
         top: 40%;
         left: 20%;
         height: 20%;
         width: 20%;
         z-index: 100001;
         background-color: #FFFFFF;
         border: 1px solid Gray;
         background-image: url(loading.gif);
         background-repeat: no-repeat;
         background-position:center;
     }


       </style>

<h3>
          
        <asp:TextBox ID="TxtBox1" runat="server"></asp:TextBox>
       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       
    </h3>
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>

            &nbsp;This is located Inside the UpdatePanel
        
           
           <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
           <br />
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           <br />
          

           
       </ContentTemplate>
</asp:UpdatePanel>

<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1"  >
    <progressTemplate>

        <div id="Background"> </div>
        <div id="Progress">
            <h6> <p style="text-align:center"><b>Loading Data ,please wait... <br /> </b> </p> </h6>
        </div>

     </progressTemplate>

</asp:UpdateProgress>

This is located Outside The UpdatePanel will refresh all web 
 <br />
           
           <br />
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
<br />
<br />

   