using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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
          
           // Label1.Text = "";
        }

        protected void SendBTN_Click(object sender, EventArgs e)
        {
            //Label1.Text = string.Format("Status :{0}", cfMessage.Message);

            /*find the connection strings, we will use this connection string 
              to open the database connection, but before we have to create the insertStatement */
            var connectionString = ConfigurationManager.ConnectionStrings["messageDB"].ConnectionString;

            /*InsertStatement will be used to insert stuff into  the database
             SO with this one ,now we have a connection string and we have a statement we can run into the database
             */
            var insertStatement = "INSERT into Messages(Name,Message) values (@Name,@Message)";

            /*
             *Now we need a connection, this SqlConnection use as a parameter the connection string
             */
            using (var sqlConnection = new SqlConnection(connectionString))
            {
                /*we nee to open the connection*/

                sqlConnection.Open();

                /*
                 */
                using (var sqlcommand = new SqlCommand(insertStatement, sqlConnection))
                {
                    sqlcommand.Parameters.AddWithValue("Name", cfMessage.Message);
                    sqlcommand.Parameters.AddWithValue("Message", cfMessage.Name);

                    /* because this is not a query , this is not expected to return any data*/
                    sqlcommand.ExecuteNonQuery();
                }

            }

        }
    }
}