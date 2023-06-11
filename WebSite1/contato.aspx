<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contato.aspx.cs" Inherits="contato" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <title>Contato | Bikcraft</title>
  <meta name="description" content="Contato.">
  <link rel="stylesheet" href="./css/style.css" />
    <link rel="stylesheet" href="./css/formulario.css" />
   <link rel="preconnect" href="https://fonts.googleapis.com" />
    <script>

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "carrinho.aspx";
            });
        });
    </script>
</head>
<body id="contato">
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
                      <asp:Image src="./img/icones/member.png" ID="btnLogin" runat="server" CssClass="icon" />
                      <asp:Image src="./img/icones/Logout.svg" ID="btnLogout" runat="server" CssClass="icon" />
                      </a></li>
              </ul>
          </nav>
      </div>
  </header>

  <main>
    <div class="titulo-bg">
      <div class="titulo container">
        <p class="font-2-l-b cor-5">Respostas em até 24h</p>
        <h1 class="font-1-xxl cor-0">nosso contato<span class="cor-p1">.</span></h1>
      </div>
    </div>

    <div class="contato container">
      <section class="contato-dados" aria-label="Endereço">
        <h2 class="font-1-m cor-0">Loja Online</h2>
        <div class="contato-endereco font-2-s cor-4">
          <p>Rua Ali Perto, 86</p>
          <p>Rio de Janeiro - RJ</p>
          <p>Brasil - Terra de Ninguém</p>
        </div>
        <address class="contato-meios font-2-s cor-4">
          <a href="mailto:contato@bikcraft.com">contato@iFruit.com</a>
          <a href="mailto:assistencia@bikcraft.com">assistencia@iFruit.com</a>
          <a href="tel:+55 (12) 99729-6905">+55 (12) 99729-6905</a>
        </address>
        <div class="contato-redes">
          <a href="./">
            <img src="./img/redes/instagram-p.svg" alt="Instagram">
          </a>
          <a href="./">
            <img src="./img/redes/facebook-p.svg" alt="Facebook">
          </a>
          <a href="./">
            <img src="./img/redes/youtube-p.svg" alt="Youtube">
          </a>
        </div>
      </section>
      <section class="contato-formulario" aria-label="Formulário">
        <form class="form" action="./contato.html">
          <div>
            <label for="nome">Nome</label>
            <input type="text" id="nome" name="nome" placeholder="Seu nome">
          </div>
          <div>
            <label for="telefone">Telefone</label>
            <input type="text" id="telefone" name="telefone" placeholder="(21) 9999-9999">
          </div>
          <div class="col-2">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="contato@email.com">
          </div>
          <div class="col-2">
            <label for="mensagem">Mensagem</label>
            <textarea rows="5" id="mensagem" name="mensagem" placeholder="O que você precisa?"></textarea>
          </div>
          <button class="botao col-2">Enviar Mensagem</button>
        </form>
      </section>
    </div>
  </main>

  <article class="lojas container">
    <h2 class="font-1-xxl">lojas locais<span class="cor-p1">.</span></h2>
    <div class="lojas-item">
      <img src="./img/lojas/rj.jpg" alt="mapa marcando o endereço em Rua Ali Perto, 25 - Rio de Janeiro - RJ">
      <div class="lojas-conteudo">
        <h3 class="font-1-xl">Rio de Janeiro</h3>
        <div class="lojas-dados font-2-s cor-8">
          <p>Rua Ali Perto, 25</p>
          <p>Rio de Janeiro - RJ</p>
        </div>
        <div class="lojas-dados font-2-s cor-8">
          <a href="mailto:rj@bikcraft.com">rj@iFruit.com</a>
          <a href="tel:+552199999999">+55 (12) 99729-6905</a>
        </div>
        <p class="lojas-tempo font-1-s"><img src="./img/icones/horario.svg" alt="">08-18h de seg à dom</p>
      </div>
    </div>

    <div class="lojas-item">
      <img src="./img/lojas/sp.jpg" alt="mapa marcando o endereço em Rua Ali Perto, 25 - São Paulo - SP">
      <div class="lojas-conteudo">
        <h3 class="font-1-xl">São Paulo</h3>
        <div class="lojas-dados font-2-s cor-8">
          <p>Rua Ali Perto, 25</p>
          <p>São Paulo - SP</p>
        </div>
        <div class="lojas-dados font-2-s cor-8">
          <a href="mailto:sp@bikcraft.com">sp@iFruit.com</a>
          <a href="tel:+551199999999">+55 (12) 99729-6905</a>
        </div>
        <p class="lojas-tempo font-1-s"><img src="./img/icones/horario.svg" alt="">08-18h de seg à dom</p>
      </div>
    </div>
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
</body>
</html>


