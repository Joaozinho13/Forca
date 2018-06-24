<%@ Page Title="Casual" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Casual.aspx.cs" Inherits="adm.Casual" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Jogar Individualmente, descubra como é legal este jogo.</h3>

                            <asp:DropDownList AutoPostBack="false"   CssClass="form-control" runat="server" ID="ddlNivel1" >
                                        <asp:ListItem>1 - Facil</asp:ListItem>
                                         <asp:ListItem>2 - Medio</asp:ListItem>
                                           <asp:ListItem>3 - Dificil</asp:ListItem>
                                        </asp:DropDownList>
                        <br />
                                                            <asp:DropDownList  AutoPostBack="false"  CssClass="form-control"   runat="server" ID="ddlCategoria1" >
                                       
                                        </asp:DropDownList>
                      
    <br />


    <asp:Button  runat="server" ID="btnDesafio" CssClass="btn btn-success"  OnClick="btnDesafio_Click" Text="Jogar" />   
</asp:Content>
