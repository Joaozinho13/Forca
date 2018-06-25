<%@ Page Title="About"  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dash.aspx.cs" Inherits="adm.Dash" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h2><%: Context.User.Identity.GetUserName()  %>, vamos jogar?</h2><br />
    <h4><b> Quantidade de vitórias: </b><asp:Label ID="lblQtdVitoria" runat="server"></asp:Label>
     <b> Quantidade de derrotas:</b> <asp:Label ID="lblQtdDerrota" runat="server"></asp:Label></h4>
     <br />
    
<div class="row">
    <asp:Label runat="server" ID="lblTeste"></asp:Label>
    <asp:UpdatePanel ID="pnlMensagem1" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
            <ContentTemplate>
        <asp:Panel ID="pnlMensagem" runat="server">
        <asp:Label runat="server" ID="lblMensagem"></asp:Label>
        </asp:Panel>
                </ContentTemplate>
               </asp:UpdatePanel>

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
    

 <div class="modal fade" id="myModal2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <asp:UpdatePanel ID="upModal2" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Desafio</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" CssClass="invisivel"  ID="lblDesafiado"></asp:Label>
                        <asp:DropDownList AutoPostBack="false"  OnSelectedIndexChanged="ddlNivel_SelectedIndexChanged" CssClass="form-control" runat="server" ID="ddlNivel1" >
                                        <asp:ListItem>1 - Facil</asp:ListItem>
                                         <asp:ListItem>2 - Medio</asp:ListItem>
                                           <asp:ListItem>3 - Dificil</asp:ListItem>
                                        </asp:DropDownList>
                        <br />
                                                            <asp:DropDownList  AutoPostBack="false"  CssClass="form-control"   runat="server" ID="ddlCategoria1" >
                                       
                                        </asp:DropDownList>
                      
                    </div>
                    <div class="modal-footer">
                             <asp:Button ID="btnEnviar"   class="btn btn-success" Text="Enviar Desafio" OnClick="btnEnviar_Click" runat="server" />
                             <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Fechar</button>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>

    
</asp:Content>
