<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GestorArticulo_web.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="head" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="text-center mb-5">
            <h1 class="fw-bold text-warning">¡Bienvenidos a Gestor de Artículos!</h1>
            <p class="lead text-muted">Aquí encontrarás todo lo necesario para gestionar tus artículos de manera fácil y rápida.</p>
        </div>

        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src=".\img\TarjetaPrueba2.jpg" class="card-img-top" alt="Gestión de Artículos">
                    <div class="card-body">
                        <h5 class="card-title">Gestión de Artículos</h5>
                        <p class="card-text">Administra tu inventario de artículos de manera eficiente. Añade, edita o elimina productos con facilidad.</p>
                        <a href="ListadoArticulo.aspx" class="btn btn-warning text-white">Ver más</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src=".\img\TarjetaPrueba1.jpg" class="card-img-top" alt="Formulario">
                    <div class="card-body">
                        <h5 class="card-title">Agregar Nuevo Artículo</h5>
                        <p class="card-text">Registra nuevos artículos fácilmente con nuestro formulario intuitivo y bien estructurado.</p>
                        <a href="FormularioArticulo.aspx" class="btn btn-warning text-white">Agregar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src=".\img\TarjetaPrueba3.jpg" class="card-img-top" alt="Perfil de Usuario">
                    <div class="card-body">
                        <h5 class="card-title">Perfil de Usuario</h5>
                        <p class="card-text">Consulta y actualiza la información de tu perfil, como tu nombre, correo electrónico y más.</p>
                        <a href="MiPerfil.aspx" class="btn btn-warning text-white">Ver Perfil</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center mt-5">
            <a href="Registro.aspx" class="btn btn-lg btn-warning text-white px-5 py-3">¡Regístrate Ahora!</a>
            <p class="mt-3 text-muted">¿Ya tienes cuenta? <a href="Login.aspx" class="text-warning">Inicia sesión aquí</a>.</p>
        </div>
    </div>
</asp:Content>
