using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ConatactFrom : System.Web.UI.UserControl
    {
        public string Message { get; set; }
        public string Name { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            { Message = TxtBox1.Text;
                Name = TextBox2.Text;
            }

            else
            { TxtBox1.Text = Message;
                TextBox2.Text= Name;
            }
                

        }
    }
}