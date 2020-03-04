<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>
<%--In Order to use the ContactFrom we need to register it--%>
<%@ Register Tagprefix="uc" TagName="ContactFrom"  Src="~/ConatactFrom.ascx"%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
<%--Now we need to use the control, in order to use it inside the project 
    we use an ID taht will  be the name of the control it will hold the avriable 
    and fucntions from the class ContactFrom.ascx.cs--%>
 <uc:ContactFrom ID="cfMessage" Message="Default Scene"  runat ="server"></uc:ContactFrom>
    <asp:Button ID="SendBTN" runat="server" OnClick="SendBTN_Click" Text="Send" />

     <p>
         <%--this label will be  replaced for a listview--%>
        <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>

     <%-- This is the new list View that replace the label--%>
         <asp:ListView ID="lvMessages" runat="server" DataSourceID="MessageDS" DataKeyNames="Id" InsertItemPosition="LastItem">
             <AlternatingItemTemplate>
                 <tr style="background-color: #FFFFFF; color: #284775;">
                     <td>
                         <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                         <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                     </td>
                     <td>
                         <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                     <td>
                         <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /></td>
                     <td>
                         <asp:Label Text='<%# Eval("Message") %>' runat="server" ID="MessageLabel" /></td>
                 </tr>
             </AlternatingItemTemplate>
             <EditItemTemplate>
                 <tr style="background-color: #999999;">
                     <td>
                         <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                         <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                     </td>
                     <td>
                         <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /></td>
                     <td>
                         <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /></td>
                     <td>
                         <asp:TextBox Text='<%# Bind("Message") %>' runat="server" ID="MessageTextBox" /></td>
                 </tr>
             </EditItemTemplate>
             <EmptyDataTemplate>
                 <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                     <tr>
                         <td>No data was returned.</td>
                     </tr>
                 </table>
             </EmptyDataTemplate>
             <InsertItemTemplate>
                 <tr style="">
                     <td>
                         <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                         <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                     </td>
                     <td>&nbsp;</td>
                     <td>
                         <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /></td>
                     <td>
                         <asp:TextBox Text='<%# Bind("Message") %>' runat="server" ID="MessageTextBox" /></td>
                 </tr>
             </InsertItemTemplate>
             <ItemTemplate>
                 <tr style="background-color: #E0FFFF; color: #333333;">
                     <td>
                         <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                         <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                     </td>
                     <td>
                         <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                     <td>
                         <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /></td>
                     <td>
                         <asp:Label Text='<%# Eval("Message") %>' runat="server" ID="MessageLabel" /></td>
                 </tr>
             </ItemTemplate>
             <LayoutTemplate>
                 <table runat="server">
                     <tr runat="server">
                         <td runat="server">
                             <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                 <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                     <th runat="server"></th>
                                     <th runat="server">Id</th>
                                     <th runat="server">Name</th>
                                     <th runat="server">Message</th>
                                 </tr>
                                 <tr runat="server" id="itemPlaceholder"></tr>
                             </table>
                         </td>
                     </tr>
                     <tr runat="server">
                         <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                     </tr>
                 </table>
             </LayoutTemplate>
             <SelectedItemTemplate>
                 <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                     <td>
                         <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                         <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                     </td>
                     <td>
                         <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                     <td>
                         <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /></td>
                     <td>
                         <asp:Label Text='<%# Eval("Message") %>' runat="server" ID="MessageLabel" /></td>
                 </tr>
             </SelectedItemTemplate>
         </asp:ListView>

         <asp:SqlDataSource runat="server" ID="MessageDS" ConnectionString='<%$ ConnectionStrings:messageDB %>' DeleteCommand="DELETE FROM [Messages] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Messages] ([Name], [Message]) VALUES (@Name, @Message)" SelectCommand="SELECT * FROM [Messages]" UpdateCommand="UPDATE [Messages] SET [Name] = @Name, [Message] = @Message WHERE [Id] = @Id">
             <DeleteParameters>
                 <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Message" Type="String"></asp:Parameter>
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Message" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
             </UpdateParameters>
         </asp:SqlDataSource>
     </p>


</asp:Content>
