using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace adm
{
    public partial class Casual : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                using (var entidades = new Entities())
                {

                    var categorias = (from b in entidades.Categoria select b).ToList();


                    //var index = rows.RowIndex;
                    //DropDownList ddlCategoria = gdvDesafiar.Rows[index].FindControl("ddlCategoria") as DropDownList;
                    ddlCategoria1.DataSource = categorias;
                    ddlCategoria1.DataTextField = "Descricao";
                    ddlCategoria1.DataValueField = "ID";
                    ddlCategoria1.DataBind();



                }
            }
            }

        protected void btnDesafio_Click(object sender, EventArgs e)
        {
            using (var entidades = new Entities())
            {
                var nivel = ddlNivel1.SelectedItem.Text.Substring(0, 1);
                var categoria = ddlCategoria1.SelectedValue;
                var palavra = (from b in entidades.Palavra where b.IDCategoria==categoria && b.IDDificuldade==categoria select b ).ToList();
                Random rand = new Random(DateTime.Now.Millisecond);
                var resultado = palavra[rand.Next(palavra.Count)];

                Response.Redirect("forca2.aspx?palavraID=" + resultado.Id + "&Categoria="+ddlCategoria1.SelectedItem);

            }

        }
    }
}