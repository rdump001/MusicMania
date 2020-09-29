<%@ Page Language="C#" MasterPageFile="~/ParentMasterPage.master" AutoEventWireup="true" CodeFile="AddReviews.aspx.cs" Inherits="Add_Reviews" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td align="center" valign="middle">
<asp:Label runat="server" id="lbheading" Width="100%" ForeColor="Maroon" Font-Bold="true" Font-Underline="true" Font-Size="Large">
</asp:Label>
</td>
</tr>

<tr>
<td>
<asp:TextBox runat="server" ID="txtaddreview" TextMode="MultiLine">
</asp:TextBox> 
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button  runat="server" id="btnsubmitreview" Text="Submit" 
        onclick="btnsubmitreview_Click"/>
</td>
</tr>
<tr>
<td align="center" valign="middle" class="style34" style="height: 38px">
<asp:Label runat="server" ID="lbmessage" ForeColor="Maroon" Font-Size="Large">
</asp:Label>
</td>
</tr>
<tr>
<td align="left" valign="middle">
<asp:GridView runat="server" ID="gvreviews">
</asp:GridView>
</td>
</tr>

</table>

</asp:Content>

