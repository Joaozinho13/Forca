<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="forca2.aspx.cs" Inherits="Forca.forca2" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Corra!</title>
    <!-- Latest compiled and minified CSS -->
    <!-- Optional theme -->

<link rel="stylesheet" href="Content/bootstrap.min.css" />



<!-- Latest compiled and minified JavaScript -->
<script src="Scripts/jquery-1.10.2.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="Scripts/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<body style="height: 318px">
    <br />
        <div class="col-lg-6">
              <div class="panel panel-default">
                <div class="panel-heading">Letras Disponiveis</div>
                    <div class="panel-body"></div>
                    <br />
                 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  <asp:Button ID="ButtonA" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonA_Click" Text="A" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonB" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonB_Click" Text="B" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonC" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonC_Click" Text="C" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonD" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonD_Click" Text="D" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonE" CssClass="btn btn-primary" runat="server" Height="30px"  OnClick="ButtonE_Click" Text="E" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonF" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonF_Click" Text="F" Width="30px" />
                      &nbsp;&nbsp;
                <asp:Button ID="ButtonG" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonG_Click" Text="G" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonH" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonH_Click" Text="H" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonI" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonI_Click" Text="I" Width="30px" />
                  &nbsp;&nbsp;<br /><br />
                 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonJ"  CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonJ_Click" Text="J" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonK" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonK_Click" Text="K" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonL" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonL_Click" Text="L" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonM"  CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonM_Click" Text="M" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonN" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonN_Click" Text="N" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonO" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonO_Click" Text="O" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonP" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonP_Click" Text="P" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonQ" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonQ_Click" Text="Q" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonR" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonR_Click" Text="R" Width="30px" />
                  &nbsp;&nbsp;<br /><br />
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; <asp:Button ID="ButtonS"  CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonS_Click" Text="S" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonT" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonT_Click" Text="T" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonU"  CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonU_Click" Text="U" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonV" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonV_Click" Text="V" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonW" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonW_Click" Text="W" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonX"  CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonX_Click" Text="X" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonY" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonY_Click" Text="Y" Width="30px" />
                  &nbsp;&nbsp;
                <asp:Button ID="ButtonZ" CssClass="btn btn-primary" runat="server" Height="30px" OnClick="ButtonZ_Click" Text="Z" Width="30px" />

                  <br /><br /><br />
            </div>
          </div>
         
        <div class="col-lg-6 col-md-6">              <div class="panel panel-default">
                <div class="panel-heading">Descubra a Palavra -   Categoria :<asp:Label ID="lblCategoria" runat="server"></asp:Label></div>
                    <div class="panel-body"></div>
           
        <div style="letter-spacing:15px;">
        <center> <asp:Label runat="server" Font-Size="XX-Large" Text="0" ID ="lblPalavra" ></asp:Label> </center>
        </div>
        </div>
          </div>

         <asp:Panel ID="Panel3" runat="server"  CssClass ="col-lg-6 col-md-6 col-sm-6">
              <div class="panel panel-default">
                <div class="panel-heading">Quantidade de erros  </div>
                    <div class="panel-body"></div>
        
        <center><asp:Label Font-Size="XX-Large" runat="server" Text="0" ID ="lblLetra"></asp:Label> </center>
                  </div>
        </asp:Panel>
        <br /><br /><br /><br /><br /> <br /><br /> <br /><br /><br /><br /><br /><br />
    </div>
      <div class="col-lg-12 col-md-12">
       
      <img runat="server" id="monster" src="Images/monster.gif" width="300" height="300" />
           
        <img src="Images/monkey.gif" id="victim"  runat="server"  width="170" height="170" /> 

   
        </div>
    
</body>
</html>
    </asp:Content>