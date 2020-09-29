<%@ Page Language="C#" MasterPageFile="~/ParentMasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="lbregister" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Maroon" Text="Register Yourself"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbinstruction" runat="server" ForeColor="Maroon" 
                    Text="Please fill this form to become a member of MusicMania.com. The information given will be used by MusicManai.com only and will not be revealed under any circumstances."></asp:Label>
            </td>
        </tr>
    </table>
        <br /> <br />
<table align="center" style="width: 313px; height: 397px;">
<tr>
<td align="left" valign="middle" style="width: 123px">
<asp:Label runat="server" ID="lbuserid" Text="User Name" ForeColor="Maroon">
</asp:Label>
</td>
<td align="left" valign="middle">
<asp:TextBox runat="server" ID="txtusername"></asp:TextBox>
</td>
</tr>
<tr>
<td align="left" valign="middle" style="width: 123px">
<asp:Label runat="server" ID="lbpwd" Text="Password" ForeColor="Maroon"></asp:Label>
</td>
<td align="left" valign="middle">
<asp:TextBox runat="server" ID="txtpwd" TextMode="Password">
</asp:TextBox>
</td>
</tr>
<tr>
<td align="left" valign="middle" style="width: 123px">
<asp:Label runat="server" ID="lbrepwd" Text="Retype Password" ForeColor="Maroon"></asp:Label>
</td>
<td align="left" valign="middle">
<asp:TextBox runat="server" ID="txtrepwd" TextMode="Password">
</asp:TextBox>
</td>
</tr>
<tr>
<td align="left" valign="middle" style="width: 123px; height: 57px;">
<asp:Label runat="server" ID="lbaddress" Text="Address" ForeColor="Maroon"></asp:Label>
</td>
<td align="left" valign="middle" style="height: 57px">
<asp:TextBox runat="server" ID="txtaddress" TextMode="MultiLine">
</asp:TextBox>
</td>
</tr>
<tr>
<td align="left" valign="middle" style="width: 123px">
<asp:Label runat="server" ID="lcountry" Text="Country" ForeColor="Maroon"></asp:Label>
</td>
<td align="left" valign="middle">
<asp:ListBox runat="server" ID="lbcountry" ForeColor="Maroon">
    <asp:ListItem>Australia</asp:ListItem>
    <asp:ListItem>Austria</asp:ListItem>
    <asp:ListItem>Belgium</asp:ListItem>
    <asp:ListItem>Brazil</asp:ListItem>
    <asp:ListItem>Canada</asp:ListItem>
    <asp:ListItem>China</asp:ListItem>
    <asp:ListItem>Colombia</asp:ListItem>
    <asp:ListItem>Denmark</asp:ListItem>
    <asp:ListItem>Egypt</asp:ListItem>
    <asp:ListItem>France</asp:ListItem>
    <asp:ListItem>Finland</asp:ListItem>
    <asp:ListItem>Germany</asp:ListItem>
    <asp:ListItem>Greece</asp:ListItem>
    <asp:ListItem>India</asp:ListItem>
    <asp:ListItem>Italy</asp:ListItem>
    <asp:ListItem>Ireland</asp:ListItem>
    <asp:ListItem>Indonesia</asp:ListItem>
    <asp:ListItem>Japan</asp:ListItem>
    <asp:ListItem>Kenya</asp:ListItem>
    <asp:ListItem>Malaysia</asp:ListItem>
    <asp:ListItem>Mauritius</asp:ListItem>
    <asp:ListItem>Mexico</asp:ListItem>
    <asp:ListItem>Nepal</asp:ListItem>
    <asp:ListItem>New Zealand</asp:ListItem>
    <asp:ListItem>Nigeria</asp:ListItem>
    <asp:ListItem>Philippines</asp:ListItem>
    <asp:ListItem>Portugal</asp:ListItem>
    <asp:ListItem>Russia</asp:ListItem>
    <asp:ListItem>Singapore</asp:ListItem>
    <asp:ListItem>Spain</asp:ListItem>
    <asp:ListItem>Sweden</asp:ListItem>
    <asp:ListItem>Switzerland</asp:ListItem>
    <asp:ListItem>Taiwan</asp:ListItem>
    <asp:ListItem>Thailand</asp:ListItem>
    <asp:ListItem>United Kingdom</asp:ListItem>
    <asp:ListItem>United States</asp:ListItem>
    <asp:ListItem>Vietnam</asp:ListItem>
    <asp:ListItem>Zimbabwe</asp:ListItem>
    </asp:ListBox>
</td>
</tr>
<tr>
<td align="left" valign="middle" style="width: 123px">
<asp:Label runat="server" ID="lbphne" Text="Contact No." ForeColor="Maroon"></asp:Label>
</td>
<td align="left" valign="middle">
<asp:TextBox runat="server" ID="txtphne">
</asp:TextBox>
</td>
</tr>
<tr>
<td align="left" valign="middle" style="width: 123px">
<asp:Label runat="server" ID="lbmail" Text="E-Mail" ForeColor="Maroon"></asp:Label>
</td>
<td align="left" valign="middle">
<asp:TextBox runat="server" ID="txtmail">
</asp:TextBox>
</td>
</tr>
<tr>
<td align="center" valign="middle">
<asp:Button runat="server" ID="btnsubmit" Text="Submit" ForeColor="Maroon" 
        PostBackUrl="~/Welcome.aspx"></asp:Button>
</td>
<td align="center" valign="middle">
<asp:Button runat="server" ID="btnreset" Text="Reset" ForeColor="Maroon">
</asp:Button>
</td>
</tr>
</table>

</asp:Content>

