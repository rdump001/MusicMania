<%@ Page Language="C#" MasterPageFile="~/ParentMasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" onauthenticate="Login1_Authenticate">
    </asp:Login>
</asp:Content>

