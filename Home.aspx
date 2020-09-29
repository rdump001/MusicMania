<%@ Page Language="C#" AutoEventWireup="true" UICulture="auto" Culture="auto" CodeFile="Home.aspx.cs" Inherits="_Default"  MasterPageFile="~/ParentMasterPage.master" meta:resourcekey="PageResource1"%>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="style1" border="1">
        <tr>
            
            <td align="left" class="style2" valign="top">
                <asp:Panel ID="Panel1" runat="server" Font-Bold="True" ForeColor="#993333" 
                    Width="303px" meta:resourcekey="Panel1Resource1">
                   <asp:Label runat="server" ID="lbwelcomeuser" Font-Bold="True" 
                        ForeColor="#993333" meta:resourcekey="lbwelcomeuserResource1"></asp:Label>
                   
                    <br /> <br />
                    Music Mania Store is a unique platform for music lovers. It has a great variety 
                    of collection of music including Jazz, Rock, Pop,Latin, and many more.
                </asp:Panel>
            </td>
           
            <td align="center" valign="middle" class="style9">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Listen Music.JPG" 
                    meta:resourcekey="Image2Resource1" />
                <br />
                <br />
                <table class="style1" border="1">
                    <tr>
                        <td class="style3">
                            <asp:Label ID="lbnewuser" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Names="Cambria" ForeColor="#993333" Text="New User" 
                                meta:resourcekey="lbnewuserResource1"></asp:Label>
                            <br />
                            <asp:HyperLink ID="hlsignup" runat="server" ForeColor="Black" 
                                NavigateUrl="~/SignUp.aspx" meta:resourcekey="hlsignupResource1">Sign Up</asp:HyperLink>
            </td>
           
            <td>
            <asp:Label ID="lbolduser" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Names="Cambria" ForeColor="#993333" Text="Already a User" 
                    meta:resourcekey="lbolduserResource1"></asp:Label>
            <br />
            <asp:HyperLink ID="hlsignin" runat="server" ForeColor="Black" 
                    meta:resourcekey="hlsigninResource1">Sign In</asp:HyperLink>
            </td>
            </tr>
            </table>
            </td>
            </tr>
        
        <tr>
        <td colspan="2" align="left" valign="top" class="style8">
        <asp:Label ID="lbmusicclub" runat="server" Font-Bold="True" Font-Size="Large" 
                Font-Underline="True" ForeColor="#993333" Text="Join the Music Club" 
                meta:resourcekey="lbmusicclubResource1"></asp:Label>
        <br />
        <asp:BulletedList ID="BulletedList1" runat="server" style="margin-left: 17px" 
                ForeColor="Maroon" meta:resourcekey="BulletedList1Resource1">
        <asp:ListItem meta:resourcekey="ListItemResource1">Get memebership of six months worth $50.</asp:ListItem>
        <asp:ListItem meta:resourcekey="ListItemResource2">Get 10% discount.</asp:ListItem>
        <asp:ListItem meta:resourcekey="ListItemResource3">Get music CDs free worth $15.</asp:ListItem>
        </asp:BulletedList>
        <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
        <asp:Label ID="lbmsg" runat="server" Text="Label" ForeColor="Maroon" 
                meta:resourcekey="lbmsgResource1"></asp:Label>

        </td>
        </tr>
    </table>
    
</asp:Content>    

    
    
