using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entity = Microsoft.AspNet.Identity.EntityFramework;

namespace adm
{
    public partial class Dash : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (var entidades = new Entities())
            {
                
                var usuariologado = (from b in entidades.AspNetUsers where b.UserName.Equals(Context.User.Identity.Name.ToString()) select b.Id).FirstOrDefault().ToString();

                var usuarios = from b in entidades.AspNetUsers select b;

                gdvDesafiar.DataSource = usuarios.ToList();
                gdvDesafiar.DataBind();
                //foreach (AspNetUsers users in usuarios)
                //{

                //    lblTeste.Text = lblTeste.Text + users.UserName + "<br>";              
                //}

                var desafios = from b in entidades.Desafio where b.IDDesafiado.Equals(usuariologado) && b.Resultado == null select b;
                gdvDesafios.DataSource = desafios.ToList();
                gdvDesafios.DataBind();
            }


            using (var entidades = new Entities())
            {

                var categorias = (from b in entidades.Categoria select b).ToList();
                
                    foreach (GridViewRow rows in gdvDesafiar.Rows)
                    {
                        var index = rows.RowIndex;
                        DropDownList ddlCategoria = gdvDesafiar.Rows[index].FindControl("ddlCategoria") as DropDownList;
                        ddlCategoria.DataSource = categorias;
                        ddlCategoria.DataTextField = "Descricao";
                        ddlCategoria.DataValueField = "ID";
                        ddlCategoria.DataBind();

                    }
               
            }


            
        }
        public void gdvDesafio_RowCommand(Object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Jogar")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                GridViewRow selectedRow = gdvDesafios.Rows[index];
                TableCell IDDesafio = selectedRow.Cells[0];
                TableCell IDDificuldade = selectedRow.Cells[3];
                TableCell IDCategoria = selectedRow.Cells[4];
                using (var entidades = new Entities())
                {
                    var palavra = (from b in entidades.Palavra where b.IDCategoria.Equals(IDCategoria.Text.Substring(0,1)) && b.IDDificuldade.Equals(IDDificuldade.Text.Substring(0,1)) select b).ToList();
                    Random rand = new Random(DateTime.Now.Millisecond);
                    var resultado = palavra[rand.Next(palavra.Count)];
                    var IDdesafio = Convert.ToInt32(IDDesafio.Text);
                    var desafio = (from b in entidades.Desafio where b.Id == IDdesafio  select b).FirstOrDefault();
                   
                    desafio.IDPalavra = resultado.Id;
                   
                    entidades.SaveChanges();
                    Response.Redirect("forca.aspx?palavraID="+resultado.Id+"&IDDesafio="+IDdesafio+"&categoria="+IDCategoria.Text);

                }

            }
        }

       public void gdvDesafiar_RowCommand(Object sender, GridViewCommandEventArgs e)
        {

            // If multiple ButtonField column fields are used, use the
            // CommandName property to determine which button was clicked.
            if (e.CommandName == "Desafiar")
            {
                
                int index = Convert.ToInt32(e.CommandArgument);

                int RowIndex = int.Parse(e.CommandArgument.ToString().Trim());

                DropDownList ddlNew = (DropDownList)gdvDesafiar.Rows[RowIndex].FindControl("ddlNivel");
                DropDownList ddlNew2 = (DropDownList)gdvDesafiar.Rows[RowIndex].FindControl("ddlCategoria");
                string abc = ddlNew.SelectedValue;
                string abc2 = ddlNew2.SelectedValue;

                // Get the last name of the selected author from the appropriate
                // cell in the GridView control.
                GridViewRow selectedRow = gdvDesafiar.Rows[index];
                TableCell IDdestinatario = selectedRow.Cells[0];
                Int32 categoriaGet = 1;
                using (var entidades = new Entities())
                {
                    var categoria = (from b in entidades.Categoria select b).ToList();

                    Random rand1 = new Random(DateTime.Now.Millisecond);
                    var resultado = categoria[rand1.Next(categoria.Count)];
                    categoriaGet = resultado.Id;
                }

                Random rdn = new Random();
                var dificuldade = rdn.Next(1, 3);



                



                    DropDownList ddlNivel = selectedRow.FindControl("ddlNivel") as  DropDownList;

                DropDownList ddlCategoria = selectedRow.FindControl("ddlCategoria") as DropDownList;
                var usuariologado = "";
                using (var entidades = new Entities())
                {

                    usuariologado = (from b in entidades.AspNetUsers where b.UserName.Equals(Context.User.Identity.Name.ToString()) select b.Id).FirstOrDefault().ToString();
                    string destinatario = IDdestinatario.Text;
                    var nivel = ddlNivel.SelectedItem.Text.Substring(0, 1);

                    Desafio desafio = new Desafio();
                    desafio.IDDesafiado = destinatario;
                    desafio.IDDesafiante = usuariologado;
                    desafio.IDDificuldade = dificuldade;
                    desafio.IDCategoria = categoriaGet;
                    entidades.Desafio.Add(desafio);
                    entidades.SaveChanges();
                    pnlMensagem.CssClass = "alert alert-success";
                    lblMensagem.Text = "Desafio enviado com Sucesso!";
                }

                





                //Response.Redirect("forca.aspx");

            }

        }

        protected void gdvDesafiar_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
              
                 
            }
        }

        protected void gdvDesafios_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                using (var entidades = new Entities())
                {
                    var idDesafiante = e.Row.Cells[1].Text;
                    var desafiante = (from b in entidades.AspNetUsers where b.Id.Equals(idDesafiante) select b.UserName).FirstOrDefault().ToString();

                    e.Row.Cells[2].Text = desafiante;
                    if (e.Row.Cells[3].Text == "1")
                    {
                        e.Row.Cells[3].Text = "1 - Fácil";
                    }
                    if (e.Row.Cells[3].Text == "2")
                    {
                        e.Row.Cells[3].Text = "2 - Médio";
                    }
                    if (e.Row.Cells[3].Text == "3")
                    {
                        e.Row.Cells[3].Text = "3 - Dificil";
                    }

                    var idCategoria = Convert.ToInt32(e.Row.Cells[4].Text);
                    var categoria = (from b in entidades.Categoria where b.Id ==idCategoria select b.Descricao).FirstOrDefault().ToString();
                    e.Row.Cells[4].Text = e.Row.Cells[4].Text + " - " +  categoria;


                }
            }
        }

        protected void ddlNivel_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}