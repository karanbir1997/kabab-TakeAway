using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kabab_TakeAway
{
    public partial class Welcome : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kebabloginbtn_Click(object sender, EventArgs e)
        {
            String id = Kebablogin .Text;

            KebabTakeawayEntities1  db = new KebabTakeawayEntities1();
            string query = (from c in db.users  
                            where c.Username == id && c.password == kebabpass.Text
                            select c.Username).FirstOrDefault();
            if (query != null)
            {
                Response.Redirect("Kebab.aspx");
            }
            else
                Response.Write("please Check your password");
        }

        protected void kebabaloginregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}