<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pagina_utilizator.aspx.cs" Inherits="uLearn.pagina_utilizator" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <p align="left" style="font-family: 'Berlin Sans FB'; font-size: x-large; font-weight: 600; font-style: normal; font-variant: normal; color: #800080">
  
  Materiale
  </p>   
   
  <asp:TreeView ID="treeView1" Runat="server">
  <Nodes>
  
  </Nodes>
  </asp:TreeView>
    
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent2" runat="server">

    
    <asp:DataList id="DataList1" runat="server">
        <ItemTemplate>
            
            
 <iframe src='<%# DataBinder.Eval(Container.DataItem, "link") %>'
        width='540px' height='450px' frameborder='0'>Acesta este un document <a target='_blank'
            href='http://office.com'>Microsoft Office</a> încorporat, susținut de <a target='_blank'
                href='http://office.com/webapps'>Office Web Apps</a>.</iframe>
 <%-- <iframe width="560" height="315" src="<%# DataBinder.Eval(Container.DataItem, "link") %>" frameborder="0" allowfullscreen></iframe> --%>
      </ItemTemplate>    
    </asp:DataList>


</asp:Content> 