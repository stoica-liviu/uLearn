using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.CodeDom;
using System.Windows.Forms;



namespace uLearn
{
    public partial class pagina_utilizator : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        
            Page.DataBind();
            AfiseazaMeniu();

            String id = Request.QueryString["id_sublectie"];
            if(id!=null)
            AfiseazaLink(id);
    }



        protected void AfiseazaLink(string id_sublectie)
        {
  
            
   
        string query = "select link from material_didactic where id_sublectie="+id_sublectie;
        SqlConnection c = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Laura\\Desktop\\uLearn\\uLearn\\uLearn\\App_Data\\ASPNETDB.MDF;Integrated Security=True;Connect Timeout=30;User Instance=True");
        
            SqlDataAdapter adapter = new SqlDataAdapter(query, c);
            
        DataSet ds = new DataSet();
        adapter.Fill(ds, "link");
        DataList1.DataSource = ds.Tables["link"].DefaultView;
        DataList1.DataBind(); 

    }

    protected void AfiseazaMeniu()
    {


        String strConn = "Server = .\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Laura\\Desktop\\uLearn\\uLearn\\uLearn\\App_Data\\ASPNETDB.MDF;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection conn = new SqlConnection(strConn);
        SqlDataAdapter da = new SqlDataAdapter("Select * from sublectie", conn);

        SqlDataAdapter daCategories = new SqlDataAdapter("Select * from capitol", conn);
        SqlDataAdapter teste = new SqlDataAdapter("Select * from test", conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "sublectie");
        daCategories.Fill(ds, "capitol");
        teste.Fill(ds, "test");
        ds.Relations.Add("Cat_Product", ds.Tables["capitol"].Columns["id_capitol"], ds.Tables["sublectie"].Columns["id_capitol"]);
        
        foreach (DataRow dr in ds.Tables["capitol"].Rows)
        {
            System.Web.UI.WebControls.TreeNode tn = new System.Web.UI.WebControls.TreeNode(dr["capitol"].ToString());
            tn.SelectAction = TreeNodeSelectAction.None;
            foreach (DataRow drChild in dr.GetChildRows("Cat_Product"))
            {
                System.Web.UI.WebControls.TreeNode t = new System.Web.UI.WebControls.TreeNode();
                System.Web.UI.WebControls.TreeNode test = new System.Web.UI.WebControls.TreeNode();
                System.Web.UI.WebControls.TreeNode link = new System.Web.UI.WebControls.TreeNode();
                t.Text = drChild["titlu"].ToString();
                t.Value = drChild["id_sublectie"].ToString();
                t.NavigateUrl = "pagina_utilizator.aspx?id_sublectie="+t.Value;
                test.Text = "test";
                test.Value = drChild["id_test"].ToString();
                test.NavigateUrl = "pagina_test.aspx?id_test=" + test.Value;
                t.ChildNodes.Add(test);
                 tn.ChildNodes.Add(t) ;
         
         
              
            }
            treeView1.Nodes.Add(tn);
        }        

    }
    }
}
