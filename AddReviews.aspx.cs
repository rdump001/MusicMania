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
using musicTableAdapters;

public partial class Add_Reviews : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=172.23.3.52;Initial Catalog=Music;User=sa;password=password@123");  
    protected void Page_Load(object sender, EventArgs e)
    {
        lbheading.Text = "Add Reviews for " + Request.QueryString["name"];
    }
    protected void btnsubmitreview_Click(object sender, EventArgs e)
    {
        string Return;
        Return = IncreaseReviewID();


        string query = "Insert into reviews (review_id,album_name, album_review) values ('" + Return + "','" + Request.QueryString["name"] + "', '" + txtaddreview.Text + "')";
        SqlCommand comm = new SqlCommand(query, con);
        con.Open();
        comm.ExecuteNonQuery();

        lbmessage.Text = "Reviews given by you are submitted.";
        reviewsTableAdapter obj = new reviewsTableAdapter();
        gvreviews.DataSource = obj.GetData(Request.QueryString["name"]);
        string an = Request.QueryString["name"];
        localhost.AlbumReviews var = new localhost.AlbumReviews();
        gvreviews.DataSource = var.GetResult(an);
        gvreviews.DataBind();


    }
    public string IncreaseReviewID()
    {
        string Review_ID = "";
        string query1 = "Select review_id from reviews";
        SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1, "reviews");
        int ctr, len;
        string reveiewid, reveiewidval;
        DataTable dt = new DataTable();
        DataRow dr;
        dt = ds1.Tables["reviews"];
        len = (dt.Rows.Count - 1);
        dr = dt.Rows[len];
        reveiewid = Convert.ToString(dr["review_id"]);
        reveiewidval = reveiewid.Substring(1, 3);
        ctr = Convert.ToInt32(reveiewidval);
        if (ctr >= 1 && ctr < 9)
        {
            ctr = ctr + 1;
            Review_ID = "R00" + ctr;
        }
        else if (ctr >= 9 && ctr < 99)
        {
            ctr = ctr + 1;
            Review_ID = "R0" + ctr;
        }
        else if (ctr >= 99)
        {
            ctr = ctr + 1;
            Review_ID = "R" + ctr;
        }
        return Review_ID;
    }

}
