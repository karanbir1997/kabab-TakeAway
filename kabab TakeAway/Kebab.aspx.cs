using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kabab_TakeAway
{
    public partial class Kebab : System.Web.UI.Page
    {
        KebabTakeawayEntities1 obj = new KebabTakeawayEntities1();
   
        mainclass objclass = new mainclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = obj.maintbs.ToList();
            GridView1.DataBind();
            GridView2.DataSource = obj.kebabs .ToList();
            GridView2.DataBind();
            GridView3.DataSource = obj.drinks.ToList();
            GridView3.DataBind();
        }

        protected void KebebAdd_Click(object sender, EventArgs e)
        {
            objclass.Addorder(TextName.Text, TextMobile.Text, TextOrder.Text, Textdrinks.Text);
            GridView1.DataSource = obj.maintbs.ToList();
            GridView1.DataBind();
            GridView2.DataSource = obj.kebabs.ToList();
            GridView2.DataBind();
            GridView3.DataSource = obj.drinks.ToList();
            GridView3.DataBind();
        }

        protected void Kebabdelete_Click(object sender, EventArgs e)
        {
            objclass.DeleteORder(Convert.ToInt32(Textid.Text));
            GridView1.DataSource = obj.maintbs.ToList();
            GridView1.DataBind();
            GridView2.DataSource = obj.kebabs.ToList();
            GridView2.DataBind();
            GridView3.DataSource = obj.drinks.ToList();
            GridView3.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            objclass.Updateo(Convert.ToInt32(Textid.Text), TextName.Text, TextMobile.Text, TextOrder.Text, Textdrinks.Text);
            GridView1.DataSource = obj.maintbs.ToList();
            GridView1.DataBind();
            GridView2.DataSource = obj.kebabs.ToList();
            GridView2.DataBind();
            GridView3.DataSource = obj.drinks.ToList();
            GridView3.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Textid.Text = GridView1.SelectedRow.Cells[1].Text;
            TextName.Text = GridView1.SelectedRow.Cells[2].Text;
            TextMobile.Text = GridView1.SelectedRow.Cells[3].Text;
            TextOrder.Text = GridView1.SelectedRow.Cells[4].Text;
            Textdrinks.Text = GridView1.SelectedRow.Cells[5].Text;

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextOrder.Text = GridView2.SelectedRow.Cells[2].Text;

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Textdrinks.Text = GridView3.SelectedRow.Cells[2].Text;

        }
    }
}