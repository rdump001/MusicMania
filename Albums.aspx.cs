using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Albums : System.Web.UI.Page
{
    ArrayList arrLstItems = new ArrayList();
    string selected;
    SqlConnection con = new SqlConnection("Data Source=172.23.3.52;Initial Catalog=music;User=sa;password=password@123");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["arrLstItems"] != null)
        {
            lbselectedalbums.DataSource = (ArrayList)Session["arrLstItems"];
            lbselectedalbums.DataBind();

        }
        else
        {
            lbselectedalbums.Visible = false;
        }

    }
    protected void ddalbum_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbalreadyselected.Text = "";

        string query = "Select album_id as 'Album ID', album_name as 'Album Name',album_artist as 'Album Artist', album_price as 'Album Price' from albums where album_name= '" + ddalbum.SelectedItem.Value + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();

        con.Open();

        da.Fill(ds, "albums");
        gvalbumdetails.DataSource = ds.Tables["albums"];
        gvalbumdetails.DataBind();

        string query2 = "Select album_review as 'Album Review'from reviews where album_name= '" + ddalbum.SelectedItem.Value + "'";
        SqlDataAdapter da2 = new SqlDataAdapter(query2, con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2, "reviews");
        gvreviewdetails.DataSource = ds2.Tables["reviews"];
        gvreviewdetails.DataBind();
        con.Close();
    }

    protected void btnaddReview_Click(object sender, EventArgs e)
    {

        if (ddalbum.SelectedValue != null && ddalbum.SelectedValue!="Select Album")
        {
            Response.Redirect("AddReviews.aspx?name=" + System.Web.HttpUtility.UrlEncode(ddalbum.SelectedValue));
        }
    }
    private void AddItemsInSession()
    {
        for (int index = 0; index < lbselectedalbums.Items.Count; index++)
        {
            string strItem = lbselectedalbums.Items[index].Text;
            arrLstItems.Add(strItem);
        }
        Session["arrLstItems"] = arrLstItems;

    }

    private bool ChkItemExist()
    {
        string strSelectedItem = ddalbum.SelectedItem.Value;
        bool blRetVal = false;
        for (int index = 0; index < lbselectedalbums.Items.Count; index++)
        {
            string strLstItem = lbselectedalbums.Items[index].Text;
            if (string.Compare(strSelectedItem, strLstItem, false) == 0)
            {
                blRetVal = true;
            }
        }
        return blRetVal;
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        lbalreadyselected.Text = "";
        lbselectedalbums.Visible = true;
        selected = ddalbum.SelectedItem.Value;
      if(!selected.Equals("Select Album"))
      {
        if (!ChkItemExist())
        {
            lbselectedalbums.Items.Add(selected);

        }
        else
        {

            lbalreadyselected.Text = "You have already selected this album.";
        }
        AddItemsInSession();

     }
   }
}