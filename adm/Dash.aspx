<%@ Page Title="About"  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dash.aspx.cs" Inherits="adm.Dash" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h2><%: Context.User.Identity.GetUserName()  %>, vamos jogar?</h2>
     <br />
    
<div class="row">
    <asp:Label runat="server" ID="lblTeste"></asp:Label>
    <asp:Panel runat="server" ID="pnlMensagem">
        <asp:Label runat="server" ID="lblMensagem"></asp:Label>
    </asp:Panel>
    <div class="col-lg-6 col-md-6 col-sm-6"> 

         <div class="panel panel-success">
              <div class="panel-heading">  <span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Meus desafios</div>
              <div class="panel-body">
        <asp:GridView ID="gdvDesafios"    OnRowDataBound="gdvDesafios_RowDataBound"     CssClass="table table-bordered"    onrowcommand="gdvDesafio_RowCommand" AutoGenerateColumns="false"  runat="server">
                           <Columns>
                                <asp:BoundField     DataField="ID" HeaderText="ID" />
                                <asp:BoundField ControlStyle-CssClass="invisivel" FooterStyle-CssClass="invisivel" HeaderStyle-CssClass="invisivel" ItemStyle-CssClass="invisivel"    DataField="IDDesafiante" HeaderText="Desafiante" />
                              <asp:BoundField      HeaderText="Desafiante" />
                                 <asp:BoundField    DataField="IDDificuldade" HeaderText="Nivel" />
                               <asp:BoundField    DataField="IDCategoria" HeaderText="Categoria" />
                                 <asp:buttonfield  buttontype="Button"    commandname="Jogar"   ControlStyle-CssClass="btn btn-success" headertext="Opções" text="Jogar"/>
                           </Columns>
                    </asp:GridView>
                  
              </div>
        </div>
    </div>
    
     <div class="col-lg-6 col-md-6 col-sm-6"> 
         <div class="panel panel-danger">
              <div class="panel-heading">  <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Desafiar amigos</div>
              <div class="panel-body">
                    <asp:GridView ID="gdvDesafiar"  OnRowDataBound="gdvDesafiar_RowDataBound"   CssClass="table table-bordered"  onrowcommand="gdvDesafiar_RowCommand" AutoGenerateColumns="false"  runat="server">
                           <Columns>
                                <asp:BoundField  FooterStyle-CssClass="invisivel" HeaderStyle-CssClass="invisivel"  ControlStyle-CssClass="invisivel" ItemStyle-CssClass="invisivel"    DataField="ID" HeaderText="ID" />
                                
                               <asp:BoundField    DataField="UserName" HeaderText="Usuário" />
                                <asp:TemplateField  FooterStyle-CssClass="invisivel" HeaderStyle-CssClass="invisivel"  ControlStyle-CssClass="invisivel" ItemStyle-CssClass="invisivel" HeaderText="Selecione o Nível">
                                  <ItemTemplate>
                                    <asp:DropDownList AutoPostBack="false"  OnSelectedIndexChanged="ddlNivel_SelectedIndexChanged" CssClass="form-control" runat="server" ID="ddlNivel" >
                                        <asp:ListItem>1 - Facil</asp:ListItem>
                                         <asp:ListItem>2 - Medio</asp:ListItem>
                                           <asp:ListItem>3 - Dificil</asp:ListItem>
                                        </asp:DropDownList>
                                  </ItemTemplate> 
                                </asp:TemplateField>
                               <asp:TemplateField   FooterStyle-CssClass="invisivel" HeaderStyle-CssClass="invisivel"  ControlStyle-CssClass="invisivel" ItemStyle-CssClass="invisivel" HeaderText="Selecione a Categoria">
                                  <ItemTemplate>
                                    <asp:DropDownList  AutoPostBack="false"  CssClass="form-control"   runat="server" ID="ddlCategoria" >
                                       
                                        </asp:DropDownList>
                                  </ItemTemplate> 
                                </asp:TemplateField>
                                
                                 <asp:buttonfield buttontype="Button"  commandname="Desafiar"   ControlStyle-CssClass="btn btn-danger" headertext="Opções" text="Desafiar"/>
                           </Columns>
                    </asp:GridView>

              </div>
        </div>
    </div>
</div>
    
</asp:Content>
