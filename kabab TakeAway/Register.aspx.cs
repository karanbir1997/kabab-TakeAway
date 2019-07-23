using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kabab_TakeAway
{
    public partial class Register : System.Web.UI.Page
    {
        mainclass obj = new mainclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kebabaloginregister_Click(object sender, EventArgs e)
        {
            obj.Addemail(KebabEmail.Text);
            obj.adduser(kebabpass.Text, Kebablogin.Text);
            Response.Redirect("Welcome.aspx");
        }

        protected void kebabloginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    }
}