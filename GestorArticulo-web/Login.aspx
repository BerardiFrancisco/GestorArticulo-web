<%@ Page Title="Login" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GestorArticulo_web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="card shadow-lg p-4" style="width: 25rem;">
            <h2 class="text-center mb-4">Login</h2>

            <div class="mb-3">
                <label for="txtEmail" class="form-label text-warning">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control border-warning" placeholder="Ingresa tu usuario"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtPassword" class="form-label text-warning">Contraseña</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control border-warning" TextMode="Password" placeholder="Ingresa tu contraseña"></asp:TextBox>
            </div>

            <div class="d-grid gap-2">
                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-warning" Text="Enviar" OnClick="btnLogin_Click" />
            </div>
        </div>
    </div>
</asp:Content>
