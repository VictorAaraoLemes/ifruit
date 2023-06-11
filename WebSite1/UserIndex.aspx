﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserIndex.aspx.cs" Inherits="UserIndex" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>iFruit</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
    <link rel="icon" href="./favicon.svg" type="image/svg+xml">
    <link rel="preload" href="./css/style.min.css" as="style">
    <link rel="stylesheet" href="./css/style.css" />
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
                            <li><a>
                                <image src="./img/icones/Bag.png" class="icon" ID="btnCart" type="button" >
                                </image></a></li>
                             <li><a>
                                 <asp:ImageButton CssClass="icon" src="./img/icones/member.png" ID="btnLogin" runat="server"/>
                                 <asp:ImageButton CssClass="icon" src="./img/icones/Logout.svg"  ID="btnLogout" runat="server" OnClick="btnLogout_Click"/></a></li>
                        </ul>

                    </nav>
                </div>
            </header>

          <main class="introducao-bg">
                <div class="introducao container">
                    <div class="introducao-conteudo">
                        <h1 class="font-1-xxl cor-0">Login Feito com Sucesso<span class="cor-p6">.</span></h1>
                        <asp:Label ID="lblSuccess" runat="server" class="font-2-l cor-5"></asp:Label>
                    </div>
                </div>
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
