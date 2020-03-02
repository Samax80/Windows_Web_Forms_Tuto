using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (IsPostBack)
            {
                TxtBox1.Text = "Is a Postback";
                Label1.Text = TxtBox1.Text;
            }
            else
            {
                TxtBox1.Text = "Is NOT a Postback";
                Label1.Text = TxtBox1.Text;


            }
        }

        protected void SendBTN_Click(object sender, EventArgs e)
        {
            
        }
    }
}