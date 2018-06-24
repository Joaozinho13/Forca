    using adm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entity = Microsoft.AspNet.Identity.EntityFramework;

namespace Forca
{
    public partial class forca : System.Web.UI.Page
    {
        int diferenca;
        protected void Page_Load(object sender, EventArgs e)
        {
                  
            if (!IsPostBack)
            {

                diferenca = 50;
                victim.Style.Value = "margin-left:" + diferenca + "%";
                Int32 palavraID = Convert.ToInt32(Request.QueryString["palavraID"]);
                lblCategoria.Text=Request.QueryString["Categoria"];
                var palavra = "";
                using (var entidades = new Entities())
                {
                    palavra = (from b in entidades.Palavra where b.Id == palavraID select b.Palavra1).FirstOrDefault();
                }
              
                List<string> caracteres = new List<string>(new string[] { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"});
          
                foreach (string letra in caracteres)
                {
                   palavra =  palavra.Replace(letra, "_");
                }

                lblPalavra.Text = palavra;

            }
            else
            {
               var erros = Convert.ToInt32(lblLetra.Text);
                diferenca = 50 - (erros*10);
                

                victim.Style.Value = "margin-left:" + diferenca + "%";
            }
        }

        protected void ButtonA_Click(object sender, EventArgs e)
        {
            ButtonA.Visible = false;
            SearchWord(ButtonA.Text);
        }

        protected void ButtonB_Click(object sender, EventArgs e)
        {
            ButtonB.Visible = false;
            SearchWord(ButtonB.Text);
        }

        protected void ButtonC_Click(object sender, EventArgs e)
        {
            ButtonC.Visible = false;
            SearchWord(ButtonC.Text);
        }

        protected void ButtonD_Click(object sender, EventArgs e)
        {
            ButtonD.Visible = false;
            SearchWord(ButtonD.Text);
        }

        protected void ButtonE_Click(object sender, EventArgs e)
        {
            ButtonE.Visible = false;
            SearchWord(ButtonE.Text);
        }

        protected void ButtonF_Click(object sender, EventArgs e)
        {
            ButtonF.Visible = false;
            SearchWord(ButtonF.Text);
        }

        protected void ButtonG_Click(object sender, EventArgs e)
        {
            ButtonG.Visible = false;
            SearchWord(ButtonG.Text);
        }

        protected void ButtonH_Click(object sender, EventArgs e)
        {
            ButtonH.Visible = false;
            SearchWord(ButtonH.Text);
        }

        protected void ButtonI_Click(object sender, EventArgs e)
        {
            ButtonI.Visible = false;
            SearchWord(ButtonI.Text);
        }

        protected void ButtonJ_Click(object sender, EventArgs e)
        {
            ButtonJ.Visible = false;
            SearchWord(ButtonJ.Text);
        }

        protected void ButtonK_Click(object sender, EventArgs e)
        {
            ButtonK.Visible = false;
            SearchWord(ButtonK.Text);
        }

        protected void ButtonL_Click(object sender, EventArgs e)
        {
            ButtonL.Visible = false;
            SearchWord(ButtonN.Text);
        }

        protected void ButtonM_Click(object sender, EventArgs e)
        {
            ButtonM.Visible = false;
            SearchWord(ButtonM.Text);
        }

        protected void ButtonN_Click(object sender, EventArgs e)
        {
            ButtonN.Visible = false;
            SearchWord(ButtonN.Text);
        }

        protected void ButtonO_Click(object sender, EventArgs e)
        {
            ButtonO.Visible = false;
            SearchWord(ButtonO.Text);
        }

        protected void ButtonP_Click(object sender, EventArgs e)
        {
            ButtonP.Visible = false;
            SearchWord(ButtonP.Text);
        }

        protected void ButtonQ_Click(object sender, EventArgs e)
        {
            ButtonQ.Visible = false;
            SearchWord(ButtonQ.Text);
        }

        protected void ButtonR_Click(object sender, EventArgs e)
        {
            ButtonR.Visible = false;
            SearchWord(ButtonR.Text);
        }

        protected void ButtonS_Click(object sender, EventArgs e)
        {
            ButtonS.Visible = false;
            SearchWord(ButtonS.Text);
        }

        protected void ButtonT_Click(object sender, EventArgs e)
        {
            ButtonT.Visible = false;
            SearchWord(ButtonT.Text);
        }

        protected void ButtonU_Click(object sender, EventArgs e)
        {
            ButtonU.Visible = false;
            SearchWord(ButtonU.Text);
        }

        protected void ButtonV_Click(object sender, EventArgs e)
        {
            ButtonV.Visible = false;
            SearchWord(ButtonV.Text);
        }

        protected void ButtonW_Click(object sender, EventArgs e)
        {
            ButtonW.Visible = false;
            SearchWord(ButtonW.Text);
        }

        protected void ButtonX_Click(object sender, EventArgs e)
        {
            ButtonX.Visible = false;
            SearchWord(ButtonX.Text);
        }

        protected void ButtonY_Click(object sender, EventArgs e)
        {
            ButtonY.Visible = false;
            SearchWord(ButtonY.Text);
        }

        protected void ButtonZ_Click(object sender, EventArgs e)
        {
            ButtonZ.Visible = false;
            SearchWord(ButtonZ.Text);
        }

        public void SearchWord(string letra)
        {

            int ErrosTotal = 6;
            int index = 0;
            Int32  palavraID =Convert.ToInt32(Request.QueryString["palavraID"]);
            Int32 IDDESAFIO = Convert.ToInt32(Request.QueryString["IDDesafio"]);
            var palavra = "";
            using (var entidades = new Entities())
            {
                palavra = (from b in entidades.Palavra where b.Id == palavraID select b.Palavra1).FirstOrDefault();


            }

            string palavra2 = lblPalavra.Text;
            if (palavra.Contains(letra))
            {
             foreach(char letras in palavra)
                {
                    if (letras == Convert.ToChar(letra))
                    {
                      palavra2 =   palavra2.Remove(index, 1);
                      palavra2 =  palavra2.Insert(index, letra);
                       
                    }
                    index = index + 1;
                }
                lblPalavra.Text = palavra2;
            }
            else
            {
                lblLetra.Text = Convert.ToString(Convert.ToInt32(lblLetra.Text)+1);
                diferenca = diferenca - 10;
                victim.Style.Value = "margin-left:" + diferenca + "%";
                
            }

          if(lblPalavra.Text == palavra )
            {
                using (var entidades = new Entities())
                {
                   var Desafio = (from b in entidades.Desafio where b.Id == IDDESAFIO select b).FirstOrDefault();
                    Desafio.Resultado = "V";
                    entidades.SaveChanges();
                }

                Response.Redirect("Vitoria.aspx");

            }

            if(Convert.ToInt32(lblLetra.Text) == ErrosTotal)
            {
                using (var entidades = new Entities())
                {
                    var Desafio = (from b in entidades.Desafio where b.Id == IDDESAFIO select b).FirstOrDefault();
                    Desafio.Resultado = "D";
                    entidades.SaveChanges();
                }
                Response.Redirect("Derrota.aspx?palavra="+palavra);
            }
           
           
        }
    }
}