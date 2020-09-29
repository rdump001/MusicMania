<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" masterpagefile="~/ChildMasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <table class="style12">
            <tr>
                <td class="style35">
                    <asp:Label ID="Label11" runat="server" ForeColor="Maroon" Text="Corporate :" 
                        Font-Size="Large"></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td class="style41" >
                    305 SW 8th Street<br />
        Bentonville, Arkansas 72716-8611<br />
        479-273-4000<br /></td>
                
            </tr>
            <tr>
            <td>
            <asp:Label runat="server" ID="lbcustomercare" Text="Customer Care :" 
                    Font-Size="Large" ForeColor="Maroon"></asp:Label>
            </td>
            </tr>
            <tr>
            <td>
            <asp:Label runat="server" ID="lbnumber" Text="1-800-952-6194">
            </asp:Label>
            </td>
            </tr>
        </table>
    </asp:Content> 