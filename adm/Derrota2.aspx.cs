using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace adm
{
    public partial class Derrota2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          palavracerta.Text = Request.QueryString["PALAVRA"];
        }
    }
}