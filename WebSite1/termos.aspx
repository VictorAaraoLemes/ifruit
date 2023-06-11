<%@ Page Language="C#" AutoEventWireup="true" CodeFile="termos.aspx.cs" Inherits="termos" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>iFruit</title>
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
                            <li><a href="./carrinho.aspx">
                                <img src="./img/icones/Bag.png" alt="Carrinho" class="icon"></a></li>
                             <li><a>
                                 <asp:ImageButton CssClass="icon" src="./img/icones/member.png" ID="btnLogin" runat="server" OnClick="btnLogin_Click"/>
                                 <asp:ImageButton CssClass="icon" src="./img/icones/Logout.svg"  ID="btnLogout" runat="server" OnClick="btnLogout_Click"/></a></li>
                        </ul>
                    </nav>
                </div>
            </header>
            <main>
                <div class="titulo-bg">
                    <div class="titulo container">
                        <p class="font-2-l-b cor-5">Termos de uso</p>
                        <h1 class="font-1-xxl cor-0">termos e condições<span class="cor-p1">.</span></h1>
                    </div>
                </div>

                <div class="termos font-2-s cor-10 container">
                    <h2 class="font-1-l cor-11">1. Política de Estorno</h2>
                    <p>1.1 Aceitamos pagamentos parcelados em todos os cartões de crédito. Para pagamentos à vista também aceitamos PIX e Boleto. Os pedidos poderão ser cancelados antes do envio do produto, e o valor pago será estornado de acordo com as políticas de cada operadora de cartão de crédito, PIX ou Boleto.</p>
                    <p>1.2 Não será possível realizar estornos após o envio do produto, salvo em casos previstos em lei.</p>
                    <p>1.3 O cliente deverá entrar em contato com a equipe de suporte caso necessite de um estorno, fornecendo todas as informações necessárias e aguardando o prazo estipulado pela operadora de cartão de crédito, PIX ou Boleto.</p>
                    <h2 class="font-1-l cor-11">2. Conta do Usuário</h2>
                    <p>2.1 Para realizar compras em nossa loja virtual, é necessário criar uma conta de usuário. O cliente deverá fornecer informações verdadeiras e atualizadas no cadastro, responsabilizando-se pela veracidade dos dados informados.</p>
                    <h2 class="font-1-l cor-11">3. Seguro iFruit</h2>
                    <p>3.1 Oferecemos aos nossos clientes a opção de contratar o seguro iFruit para garantir a proteção do seu dispositivo móvel. O valor do seguro será informado no momento da contratação.</p>
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


