<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs"  MasterPageFile="~/ChildMasterPage.master"%>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


   
    <table class="style1" border="1">
        <tr>
            
        <td align="left" class="style2" valign="top" rowspan="2">
                <asp:Panel ID="Panel1" runat="server" Font-Bold="True" ForeColor="Maroon" 
            Height="90%" Width="90%" style="margin-top: 0px">
            Welcome 
        to MusicMania Store !
            <br />
            <br />
            <span > MusicMania, established in 1989, has 40 stores all over 
            United States. It is a unique paltform of music that caters to the tastes of all kind of music lovers. MusicMania is famous for its 
            huge collection of music and excellent customer service.</span>
            <br /> <br />
            
            Vision:
            <br />
            <span>
            <br />
            To be the country’s most preferred retailer for music. To be present at the 
            consumer’s choice of access and format to deliver the same. 
            <br />
            <br />
            </span>
            <span>Mission:</span>
            <asp:BulletedList ID="blmission" runat="server" 
                Font-Bold="False" style="margin-left: 17px">
                <asp:ListItem>Provide best customer service to ensure complete customer 
                satisfaction.</asp:ListItem>
                <asp:ListItem>To become largest provider of music in US.</asp:ListItem>
            </asp:BulletedList>
            
            <span>Awards:</span>
            <br />
            
            <asp:BulletedList ID="blaward" runat="server" 
                style="margin-left: 17px; margin-bottom: 133px;" Font-Bold="False">
                <asp:ListItem>Got an award for &quot;Best Music Store&quot; in 1995.</asp:ListItem>
                <asp:ListItem>Got an award for &quot;Best Customer Service&quot; and &quot;Best Vendor-Customer 
                Relationship&quot; in 1998.</asp:ListItem>
            </asp:BulletedList>
        </asp:Panel>

            </td>
        </tr>
    </table>
    
</asp:Content>    

 