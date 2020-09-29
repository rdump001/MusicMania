<%@ Page Language="C#" MasterPageFile="~/ParentMasterPage.master" AutoEventWireup="true" CodeFile="Albums.aspx.cs" Inherits="Albums" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td align="left" valign="middle">
<asp:DropDownList ID="ddalbum" runat="server" AutoPostBack="True" 
        ForeColor="Maroon"  Width="243px" 
        onselectedindexchanged="ddalbum_SelectedIndexChanged" >
        <asp:ListItem>Select Album</asp:ListItem>
        <asp:ListItem>Salute</asp:ListItem>
        <asp:ListItem>Drum Circle</asp:ListItem>
        <asp:ListItem>Death Magnetic</asp:ListItem>
        <asp:ListItem>Black</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="btnsave" runat="server" Text="Save" Height="26px" 
        onclick="btnsave_Click"/> 
&nbsp;<asp:Button ID="btnaddReview" runat="server" Text="Add Review" onclick="btnaddReview_Click" 
        />

</td>

</tr>

<tr>
<td colspan="2 align="left" valign="middle" style="height: 74px">
 &nbsp;
 <br />
<asp:Label ID="lbalreadyselected" runat="server">
</asp:Label></td>
</tr>
<tr>
<td colspan="2" align="left" valign="middle">
<asp:Label ID="lbselectedalbum" runat="server" Text="Selected Albums">
</asp:Label>
<br /><br />
<asp:ListBox runat="server" ID="lbselectedalbums" Height="85px" Width="140px"></asp:ListBox>
</td>
</tr>
<tr>
<td colspan="2" align="left" valign="middle" style="width: 493px">
<asp:Label runat="server" ID="lbalbumdetails" Text="Album Details">
</asp:Label>
</td>
</tr>
<tr>
<td align="left" valign="middle">
<asp:GridView ID="gvalbumdetails" runat="server" Width="100%">
    </asp:GridView>
</td>
<td align="left" valign="middle">
<asp:GridView ID="gvreviewdetails" runat="server" Width="100%">
    </asp:GridView>
</td>
</tr>

</table>

</asp:Content>

