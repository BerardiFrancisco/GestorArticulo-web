<%@ Page Title="Error" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="GestorArticulo_web.Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-center mt-5">
        <h1 class="display-4 text-danger">¡Oops! Algo salió mal</h1>
        <p class="lead">Parece que ha ocurrido un error. Lo sentimos por el inconveniente.</p>
        <a href="Home.aspx" class="btn btn-warning btn-lg mt-3">Volver al Inicio</a>
        <asp:Label Text="Error" ID="lblError" runat="server" />
    </div>
</asp:Content>
