<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="uLearn.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Care e stilul tau de invatare? </title>
</head>
<body>
    <form id="form1" runat="server">
    <h1> Test initial </h1>
    <h2> Personalizarea traseului de invatare </h2> 
    <div>
    &nbsp <h2> A. Pentru a putea sa adaptam cursul nostru la nevoile tale, te rugam sa ne 
    spui cate ceva despre tine! </h2></br>
    &nbsp Bifeaza din lista de mai jos caracteristicile pe care consideri ca le are stilul tau de invatare.
    </br>
     &nbsp <small>(Alege 5 caracteristici care ti se par potrivite stilului tau (pot fi din mai multe categorii, ne adaptam). </small>
    <h3> Inotator </h3>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
    <asp:ListItem> Ai tendinta de a sari de la un subiect la altul si de a renunta usor</asp:ListItem> 
    <asp:ListItem> Vrei sa vezi imediat daca functioneaza </asp:ListItem>
    <asp:ListItem> Vrei sa treci imediat la capitolul urmator al cartii </asp:ListItem>
    <asp:ListItem> Lucrezi bine pe perioade foarte scurte, apoi iti pierzi concentrarea </asp:ListItem>
    </asp:CheckBoxList>
    <h3> Visator </h3>
    <asp:CheckBoxList ID="CheckBoxList3" runat="server">
    <asp:ListItem> Te gandesti foarte mult la subiectul studiat </asp:ListItem>
    <asp:ListItem> Iti place sa cercetezi mult in jurul subiectului</asp:ListItem>
    <asp:ListItem> Dai la o parte aspectele practice (de exemplu: scrisul) </asp:ListItem>
    <asp:ListItem> N-ai nicio idee unde zboara timpul </asp:ListItem>
    <asp:ListItem> Iti tot refaci agenda zilei </asp:ListItem>
    </asp:CheckBoxList>
    <h3> Logician </h3>
     <asp:CheckBoxList ID="CheckBoxList7" runat="server">
    <asp:ListItem> Iti plac lucrurile care au  sens</asp:ListItem>
    <asp:ListItem> Vrei sa intelegi ce rationamente sunt in spate </asp:ListItem>
    <asp:ListItem> Esti foarte organizat in studiu </asp:ListItem>
    <asp:ListItem> Iti place sa abordezi probleme complexe </asp:ListItem>
    <asp:ListItem> Esti perfectionist </asp:ListItem>
    </asp:CheckBoxList>
    <h3> Cercetator </h3>
     <asp:CheckBoxList ID="CheckBoxList8" runat="server">
    <asp:ListItem> Gasesti totul interesant </asp:ListItem>
    <asp:ListItem> Iti place sa vezi imaginea de ansamblu </asp:ListItem>
    <asp:ListItem> Ai cunostiinte din majoritatea domeniilor </asp:ListItem>
    <asp:ListItem> Ti se pare greu sa selectezi ce e relevant </asp:ListItem>
    </asp:CheckBoxList>
    <p> Consideri ca punctele tale forte in invatare sunt: </p>
    Alege minim 4 puncte forte pe care le ai si ti se par esentiale.
    <h3> Inotator </h3>
     <asp:CheckBoxList ID="CheckBoxList2" runat="server">
    <asp:ListItem> Nu pierzi timpul ingrijorandu-te</asp:ListItem> 
    <asp:ListItem> Incepi task-urile din timp </asp:ListItem>
    <asp:ListItem> Ii poti motiva pe ceilalti </asp:ListItem>
    <asp:ListItem> Esti bun actor, rezolvi probleme rapid si gestionezi situatiile de criza </asp:ListItem>
    </asp:CheckBoxList>
    <h3> Visator </h3>
    <asp:CheckBoxList ID="CheckBoxList4" runat="server">
    <asp:ListItem> Reflectezi mult si evaluezi bine </asp:ListItem>
    <asp:ListItem> Esti creativ si ai foarte multe idei </asp:ListItem>
    <asp:ListItem> Ajungi la radacina lucrurilor </asp:ListItem>
    <asp:ListItem> Asculti bine si esti empatic </asp:ListItem>
    </asp:CheckBoxList>
    <h3> Logician </h3>
    <asp:CheckBoxList ID="CheckBoxList5" runat="server">
    <asp:ListItem> Ai o gandire analitica si critica </asp:ListItem>
    <asp:ListItem> Esti bun la stiinte, matematica si rezolvi probleme foarte repede </asp:ListItem>
    <asp:ListItem> Esti foarte organizat in studiu </asp:ListItem>
    <asp:ListItem> Pui intrebari </asp:ListItem>
    </asp:CheckBoxList>
    <h3> Cercetator </h3>
    <asp:CheckBoxList ID="CheckBoxList6" runat="server">
    <asp:ListItem> Esti foarte motivat si interesat </asp:ListItem>
    <asp:ListItem> Ai cunostiinte generale </asp:ListItem>
    <asp:ListItem> Vezi conexiunile dintre lucruri </asp:ListItem>
    <asp:ListItem> Esti creativ si inventiv </asp:ListItem>
    </asp:CheckBoxList>

    <h2> B. Pentru a-ti stabili nivelul de cunostiinte in materie de algoritmica, raspunde-ne, te rugam, la urmatoarele intrebari </h2>
        <p> <ol> <li> Ce este un algoritm? </li>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem> </asp:ListItem>
            <asp:ListItem> </asp:ListItem>
            <asp:ListItem> </asp:ListItem>
            </asp:RadioButtonList>
            <li> Ce crezi ca inseamna un algoritm de sortare? </li>
              <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem> </asp:ListItem>
            <asp:ListItem> </asp:ListItem>
            <asp:ListItem> </asp:ListItem>
            </asp:RadioButtonList>
            <li> Ce afiseaza urmatoarea secventa de pseudocod? </li>
            </ol>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ol start="4"> 
            <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem> </asp:ListItem>
            <asp:ListItem> </asp:ListItem>
            <asp:ListItem> </asp:ListItem>
            </asp:RadioButtonList>
            <li> Bla </li></ol>
         </p>
     
<asp:Button ID="Button1" OnClick="submit" Text="Trimite" runat="server" />
<p><asp:Label id="lbl1" runat="server" /></p>
    </div>
    </form>
</body>
</html>

