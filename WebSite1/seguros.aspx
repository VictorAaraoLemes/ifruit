<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seguros.aspx.cs" Inherits="seguros" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>iFruit</title>
    <link rel="icon" href="./favicon.svg" type="image/svg+xml">
    <link rel="preload" href="./css/style.min.css" as="style">
    <link rel="stylesheet" href="./css/style.css" />
    <link rel="stylesheet" href="./css/seguros/perguntas.css" />
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
            <main class="seguros-bg">
                <div class="titulo-bg">
                    <div class="titulo container">
                        <p class="font-2-l-b cor-5">Escolha o seguro</p>
                        <h1 class="font-1-xxl cor-0">você seguro<span class="cor-p1">.</span></h1>
                    </div>
                </div>

                <div class="seguros container">

                    <div class="seguros-item fadeInLeft" data-anime="200">
                        <h3 class="font-1-xl cor-6">PRATA</h3>
                        <span class="font-1-xl cor-0">R$ 199 <span class="font-1-xs cor-6">mensal</span></span>
                        <ul class="font-2-m cor-0">
                            <li>Duas trocas por ano</li>
                            <li>Assistência técnica</li>
                            <li>Suporte 08h às 18h</li>
                            <li>Cobertura estadual</li>
                        </ul>
                        <a class="botao secundario" href="./orcamento.html?tipo=seguro&produto=prata">Inscreva-se</a>
                    </div>

                    <div class="seguros-item fadeInRight" data-anime="400">
                        <h3 class="font-1-xl cor-p1">OURO</h3>
                        <span class="font-1-xl cor-0">R$ 299 <span class="font-1-xs cor-6">mensal</span></span>
                        <ul class="font-2-m cor-0">
                            <li>Cinco trocas por ano</li>
                            <li>Assistência especial</li>
                            <li>Suporte 24h</li>
                            <li>Cobertura nacional</li>
                            <li>Desconto em parceiros</li>
                            <li>Acesso ao Clube Bikcraft</li>
                        </ul>
                        <a class="botao" href="./orcamento.html?tipo=seguro&produto=ouro">Inscreva-se</a>
                    </div>
                </div>
            </main>

            <article class="vantagens-bg">
                <div class="vantagens container">
                    <h2 class="font-1-xxl cor-0">vantagens<span class="cor-p1">.</span></h2>
                    <ul>
                        <li>
                            <img src="./img/icones/manutencao.svg" alt="">
                            <h3 class="font-1-l cor-0">Reparo Elétrico</h3>
                            <p class="font-2-s cor-5">Garantimos o reparo completo do seu aparelho em caso de falhas. Sabemos que falhas são raras, mas estamos aqui para caso ocorra.</p>
                        </li>
                        <li>
                            <img src="./img/icones/carbono (2).svg" alt="">
                            <h3 class="font-1-l cor-0">Carbono</h3>
                            <p class="font-2-s cor-5">Nossos quadros são feitos para durar para sempre. Mas caso algo ocorra, ficamos felizes em reparar.</p>
                        </li>
                        <li>
                            <img src="./img/icones/sustentavel.svg" alt="">
                            <h3 class="font-1-l cor-0">Sustentável</h3>
                            <p class="font-2-s cor-5">Trabalhamos com a filosofia de desperdício zero. Qualquer parte defeituosa é reciclada e reutilizada em outro projeto.</p>
                        </li>
                        <li>
                            <img src="./img/icones/rastreador (2).svg" alt="">
                            <h3 class="font-1-l cor-0">Rastreador</h3>
                            <p class="font-2-s cor-5">Utilizamos o GPS do seu aparelho em conjunto com especialistas em segurança para efetuarmos a recuperação.</p>
                        </li>
                        <li>
                            <img src="./img/icones/seguro.svg" alt="">
                            <h3 class="font-1-l cor-0">Segurança</h3>
                            <p class="font-2-s cor-5">Com o seguro iFruit você pode ficar tranquilo em saber que o seu dinheiro não será perdido em casos de roubo.</p>
                        </li>
                        <li>
                            <img src="./img/icones/velocidade.svg" alt="">
                            <h3 class="font-1-l cor-0">Rapidez</h3>
                            <p class="font-2-s cor-5">A seu aparelho ficará pronta para uso no mesmo dia, caso você traga ela para ser reparada em uma das filiais.</p>
                        </li>
                    </ul>
                </div>
            </article>

            <article class="perguntas container">
                <h2 class="font-1-xxl">perguntas frequentes<span class="cor-p1">.</span></h2>

                <dl>
                    <div>
                        <dt>
                            <button class="font-1-m-b" aria-controls="pergunta1" aria-expanded="true">Qual forma de pagamento vocês aceitam?</button></dt>
                        <dd id="pergunta1" class="font-2-s cor-9 ativa">Aceitamos pagamentos parcelados em todos os cartões de crédito. Para pagamentos à vista também aceitarmos PIX e Boleto através do PagSeguro.</dd>
                    </div>
                    <div>
                        <dt>
                            <button class="font-1-m-b" aria-controls="pergunta2" aria-expanded="false">Como posso entrar em contato?</button></dt>
                        <dd id="pergunta2" class="font-2-s cor-9">Aceitamos pagamentos parcelados em todos os cartões de crédito. Para pagamentos à vista também aceitarmos PIX e Boleto através do PagSeguro.</dd>
                    </div>
                    <div>
                        <dt>
                            <button class="font-1-m-b" aria-controls="pergunta3" aria-expanded="false">Vocês possuem algum desconto?</button></dt>
                        <dd id="pergunta3" class="font-2-s cor-9">Aceitamos pagamentos parcelados em todos os cartões de crédito. Para pagamentos à vista também aceitarmos PIX e Boleto através do PagSeguro.</dd>
                    </div>
                    <div>
                        <dt>
                            <button class="font-1-m-b" aria-controls="pergunta4" aria-expanded="false">Qual a garantia que possuo?</button></dt>
                        <dd id="pergunta4" class="font-2-s cor-9">Aceitamos pagamentos parcelados em todos os cartões de crédito. Para pagamentos à vista também aceitarmos PIX e Boleto através do PagSeguro.</dd>
                    </div>
                    <div>
                        <dt>
                            <button class="font-1-m-b" aria-controls="pergunta5" aria-expanded="false">Posso parcelar no boleto?</button></dt>
                        <dd id="pergunta5" class="font-2-s cor-9">Aceitamos pagamentos parcelados em todos os cartões de crédito. Para pagamentos à vista também aceitarmos PIX e Boleto através do PagSeguro.</dd>
                    </div>
                    <div>
                        <dt>
                            <button class="font-1-m-b" aria-controls="pergunta6" aria-expanded="false">Quantas trocas posso fazer ao ano?</button></dt>
                        <dd id="pergunta6" class="font-2-s cor-9">Aceitamos pagamentos parcelados em todos os cartões de crédito. Para pagamentos à vista também aceitarmos PIX e Boleto através do PagSeguro.</dd>
                    </div>
                </dl>
            </article>
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

