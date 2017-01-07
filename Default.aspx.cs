using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;



public partial class Karate_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindGridview();
    }


    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        BindGridview();
    }


    protected void BindGridview()
    {
        sqlPerson.SelectCommand = "SELECT * FROM PersonStyles WHERE Name LIKE @NameParam OR DOB LIKE @NameParam OR DOD LIKE @NameParam OR Style LIKE @NameParam";
        sqlPerson.SelectParameters.Clear();
        sqlPerson.SelectParameters.Add("NameParam", "%" + txtName.Text + "%");
        GridView1.Visible = true;
    }

}
