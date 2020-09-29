using System;
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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbmsg.Text = "This website has been visited " + (Application["PageRequestCount"]) + " times.";
        if (!Page.IsPostBack)
        {
            lbwelcomeuser.Text = "Welcome " + Request.QueryString["Name"] + " to MusicMania!";
        }

    }
}
