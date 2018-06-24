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

        }

        protected void btnDesafio_Click(object sender, EventArgs e)
        {
            using (var entidades = new Entities())
            {
                var palavra = (from b in entidades.Palavra select b).ToList();
                Random rand = new Random(DateTime.Now.Millisecond);
                var resultado = palavra[rand.Next(palavra.Count)];

                Response.Redirect("forca2.aspx?palavraID=" + resultado.Id);

            }

        }
    }
}