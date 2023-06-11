<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>iFruit</title>
    <link rel="icon" href="./favicon.svg" type="image/svg+xml">
    <link rel="stylesheet" href="./css/style.css" />
    <link rel="stylesheet" href="./css/formulario.css" />
    <link rel="stylesheet" href="./Register.css" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <script>

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "carrinho.aspx";
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header class="header-bg">
                <div class="header container">
                    <a href="./index.aspx">
                        <img src="./img/IFruit_logo.svg" alt="" class="logo">
                    </a>
                    <a href="./index.aspx">
                        <img src="./img/Ifruit_name.svg" alt="" class="logo2">
                    </a>

                    <nav aria-label="primaria">
                        <ul class="header-menu font-1-m cor-0">
                            <li><a href="./produto.aspx">Loja</a></li>
                            <li><a href="./seguros.aspx">Seguros</a></li>
                            <li><a href="./contato.aspx">Contato</a></li>
                            <li><a href="./carrinho.aspx">
                                <img src="./img/icones/Bag.png" alt="Carrinho" class="icon"></a></li>
                            <li><a href="./login.aspx">
                                <img src="./img/icones/member.png" alt="Busca" class="icon"></a></li>
                        </ul>
                    </nav>
                </div>
            </header>


            <main>
                <div class="titulo-bg">
                    <div class="titulo container">
                        <p class="font-2-l-b cor-5">Seja Bem vindo</p>
                        <h1 class="font-1-xxl cor-0">Registre-se<span class="cor-p1">.</span></h1>
                    </div>
                </div>

                <section class="contato-formulario" aria-label="Formulário">
                    <div class="form">

                        <div class="form-u">
                            <label>Nome de Usuario</label>
                            <asp:TextBox ID="txtNomeU" runat="server" Class="form-control" placeholder="Digite Seu Nome de Usuário"></asp:TextBox>
                        </div>
                        <div class="form-u">
                            <label>Nome completo</label>
                            <asp:TextBox ID="txtNome" runat="server" Class="form-control" placeholder="Digite seu Nome Completo"></asp:TextBox>
                        </div>

                        <div class="form-u">
                            <label>Senha</label>
                            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" Class="form-control" placeholder="Digite sua Senha"></asp:TextBox>
                        </div>

                        <div class="form-u">
                            <label>Confirmar Senha</label>
                            <asp:TextBox ID="txtCSenha" runat="server" TextMode="Password" Class="form-control" placeholder="Confirme sua senha"></asp:TextBox>
                        </div>
                        <div class="form-u">
                            <label>Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Class="form-control" placeholder="Digite seu Email"></asp:TextBox>
                        </div>
                        <label>Se já tiver uma conta<asp:LinkButton runat="server" href="./login.aspx"> Faça Login</asp:LinkButton></label>
                        <div class="form-u">
                            <asp:Button class="btn btn-success btn-block btn-lg" ID="BtnRegister" runat="server" Text="Registrar" OnClick="BtnRegister_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                        </div>

                    </div>
                </section>
            </main>


            <footer class="footer-bg">
                <div class="footer container">
                    <img src="./img/Ifruit_name.svg" alt="iFruit">
                    <div class="footer-contato">
                        <h3 class="font-2-l-b cor-0">Contato</h3>
                        <ul class="font-2-m cor-5">
                            <li><a href="tel:+552199999999">+55 12 99729-6905</a></li>
                            <li><a href="mailto:contato@bikcraft.com">contato@iFruit.com</a></li>
                            <li>Rua Ali Perto, 86 - Centro</li>
                            <li>Lorena - SP</li>
                        </ul>
                        <div class="footer-redes">
                            <a href="./">
                                <img src="./img/redes/instagram-b.svg" alt="Instagram">
                            </a>
                            <a href="./">
                                <img src="./img/redes/facebook-b.svg" alt="Facebook">
                            </a>
                            <a href="./">
                                <img src="./img/redes/youtube-b.svg" alt="Youtube">
                            </a>
                        </div>
                    </div>
                    <div class="footer-informacoes">
                        <h3 class="font-2-l-b cor-0">Informações</h3>
                        <nav>
                            <ul class="font-1-m cor-5">
                                <li><a href="./produto.aspx">Produtos</a></li>
                                <li><a href="./seguros.aspx">Seguros</a></li>
                                <li><a href="./contato.aspx">Contato</a></li>
                                <li><a href="./termos.aspx">Termos e Condições</a></li>
                            </ul>
                        </nav>
                    </div>
                    <p class="footer-copy font-2-m cor-6">iFruit © Alguns direitos reservados.</p>
                </div>
            </footer>
        </div>
    </form>

</body>
</html>
