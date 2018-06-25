<%@ Page Title="Derrota" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Derrota2.aspx.cs" Inherits="adm.Derrota2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Você perdeu,  a palavra correta era   <asp:Label runat="server" ID="palavracerta"></asp:Label>! <a href="Default.aspx">Volte para o Dashboard</a></h3>

  
    <center>
        <img src="Images/derrota.png" />
       
    </center>
</asp:Content>
