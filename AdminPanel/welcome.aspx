<%@ Page Title="" Language="C#" MasterPageFile="~/Vadim/AdminPanel/Admin.Master" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="AdminPanel_welcome" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="table"> <img src="img/bg-th-left.gif" width="8" height="7" alt="" class="left" /> <img src="img/bg-th-right.gif" width="7" height="7" alt="" class="right" />
        <table class="listing" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <th class="full" colspan="2">Welcome text</th>
          </tr>
          <tr class="bg">
            <td class="first" width="172"><strong>&#1054;&#1087;&#1080;&#1089;&#1072;&#1085;&#1080;&#1077;:</strong></td>
            <td class="last">
<CKEditor:CKEditorControl ID="aboutus_az" BasePath="../ckeditor/" runat="server"></CKEditor:CKEditorControl>
</td>
</tr>


<tr>
            <td class="full" colspan="2"><asp:Button ID="save_btn" runat="server" 
                    Text="&#1057;&#1086;&#1093;&#1088;&#1072;&#1085;&#1080;&#1090;&#1100;" 
                    onclick="save_btn_Click" />
                    <br />
                    <asp:Label ID="Error_lb" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    </tr>


</table>
</div>

</asp:Content>

