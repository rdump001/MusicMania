using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for AlbumReviews
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class AlbumReviews : System.Web.Services.WebService {

    public AlbumReviews () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataSet GetResult(string album_name)
    {
        //creating connection string
        string SqlConStr = "Data Source=172.23.3.52;Initial Catalog=music; User ID=sa; password=password@123";
        //creating sql query
        string SqlQry = " Select album_review from reviews Where album_name= '" + album_name + "'";
        //creating adapter 
        SqlDataAdapter adp = new SqlDataAdapter(SqlQry, SqlConStr);
        //creating dataset
        DataSet ds = new DataSet();
        //Filling dataset with data 
        adp.Fill(ds, "reviews");
        return ds;
    }
    
   
    
}

