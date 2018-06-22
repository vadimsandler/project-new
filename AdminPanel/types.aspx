<%@ Page Title="" Language="C#" MasterPageFile="~/Vadim/AdminPanel/Admin.Master" AutoEventWireup="true" CodeFile="types.aspx.cs" Inherits="AdminPanel_types" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="table"> <img src="img/bg-th-left.gif" width="8" height="7" alt="" class="left" /> <img src="img/bg-th-right.gif" width="7" height="7" alt="" class="right" />
        <table class="listing" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <th class="full" colspan="2">Сервисы</th>
          </tr>
          <tr class="bg">
          <asp:Label runat="server" ID="ID_lb" Visible="false"></asp:Label>
            <td class="first" width="172"><strong>Название:</strong></td>
            <td class="last">
                <asp:TextBox runat="server" ID="name_edt" Width="250px"></asp:TextBox>
            </td>
            </tr>
            
             <tr class="bg">
            <td class="first" width="172"><strong>&#1054;&#1087;&#1080;&#1089;&#1072;&#1085;&#1080;&#1077;:</strong></td>
            <td class="last">
<CKEditor:CKEditorControl ID="long_edt" BasePath="../ckeditor/" runat="server"></CKEditor:CKEditorControl>
</td>
</tr>

           
            <tr>
                         <tr class="bg">
            <td class="first" width="172"><strong>Код картинки:</strong></td>
            <td class="last">
<asp:TextBox ID="code_edt" runat="server"></asp:TextBox>
</td>
</tr>

           
            <tr>
            <td class="full" colspan="2"><asp:Button ID="Save_btn" runat="server" 
                    Text="&#1044;&#1086;&#1073;&#1072;&#1074;&#1080;&#1090;&#1100;" 
                    onclick="Save_btn_Click" />
                     <asp:Button ID="edit_btn" runat="server" 
                    Text="&#1048;&#1079;&#1084;&#1077;&#1085;&#1080;&#1090;&#1100;" onclick="edit_btn_Click" 
                    />
                    <asp:Button ID="Cancel_btn" runat="server" 
                    Text="&#1054;&#1090;&#1084;&#1077;&#1085;&#1080;&#1090;&#1100;" onclick="Cancel_btn_Click" 
                     /><br /><br />
                    <br />
                    <asp:Label ID="Error_lb" Text="" ForeColor="red" runat="server"></asp:Label>
                    </td>
                    </tr>
                 

    </table>
        <table class="listing" cellpadding="0" cellspacing="0">
          <tr>
          <td>

 <asp:GridView ID="CategoriesGrid" runat="server" CellPadding="4" ForeColor="White" 
                  GridLines="None" AutoGenerateColumns="False"  DataKeyNames="ID" 
                  DataSourceID="SqlDataSource1" Font-Names="Arial" Width="779px" 
                  AllowSorting="True" onrowupdating="CategoriesGrid_RowUpdating" 
                  OnRowCommand="CategoriesGrid_RowCommand" 
                  onrowediting="CategoriesGrid_RowEditing" 
                  onrowdeleting="CategoriesGrid_RowDeleting">
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <EditRowStyle BackColor="#999999" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" BorderColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                 <asp:BoundField DataField="ID" ReadOnly="True" />
                 <asp:BoundField DataField="NAME" HeaderText="Название" SortExpression="NAME"/>
                 <asp:BoundField DataField="CODE" HeaderText="Код картинки" SortExpression="CODE"/>
                 
   
              
                 <asp:CommandField ShowEditButton="False"  ShowDeleteButton="True" HeaderText="&#1044;&#1077;&#1081;&#1089;&#1090;&#1074;&#1080;&#1103;" EditText="&#1048;&#1079;&#1084;&#1077;&#1085;&#1080;&#1090;&#1100;" DeleteText="&#1059;&#1076;&#1072;&#1083;&#1080;&#1090;&#1100;" UpdateText="&#1057;&#1086;&#1093;&#1088;&#1072;&#1085;&#1080;&#1090;&#1100;" CancelText="&#1054;&#1090;&#1084;&#1077;&#1085;&#1080;&#1090;&#1100;"/>
                 
                 <asp:ButtonField ButtonType="Image" CommandName="UpdateCommand" ImageUrl="img/edit-icon.gif" HeaderText="&#1048;&#1079;&#1084;&#1077;&#1085;&#1080;&#1090;&#1100;"/>
                 
              </Columns>
          </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</td>
</tr>
</table>

</asp:Content>