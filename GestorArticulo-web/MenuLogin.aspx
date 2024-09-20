<%@ Page Title="Menu" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="MenuLogin.aspx.cs" Inherits="GestorArticulo_web.MenuLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-center mt-5">
        <h1 class="display-5 text-warning">Menú Principal</h1>
        <p class="lead">Selecciona una página para navegar</p>
        <div class="d-grid gap-2 d-sm-block mt-4">
            <a href="Pagina1.aspx" class="btn btn-warning btn-lg mb-3">Página 1</a>
            <%if (Session["trainee"] != null && ((Dominio.Trainee)Session["trainee"]).TipoUsuario == Dominio.TipoUsuario.ADMIN)
            {%>
            <a href="Pagina2.aspx" class="btn btn-warning btn-lg">Página 2. Solo para Admin</a>
            <%}%> 
        </div>
    </div>
</asp:Content>
