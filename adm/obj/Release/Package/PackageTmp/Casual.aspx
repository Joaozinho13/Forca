<%@ Page Title="Casual" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Casual.aspx.cs" Inherits="adm.Casual" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Jogar Individualmente, descubra como é legal este jogo.</h3>
    <asp:Button  runat="server" ID="btnDesafio" CssClass="btn btn-success"  OnClick="btnDesafio_Click" Text="Jogar" />   
</asp:Content>
