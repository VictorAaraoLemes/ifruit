<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="viewProduto.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <main class="titulo-bg">


        <asp:Repeater ID="rptDetalhes1" runat="server">
            <ItemTemplate>
                <div>
                    <div class="titulo container">
                        <p class="font-2-xl cor-5">R$ <%# Eval("PPrice") %> </p>
                        <h1 class="font-1-xxl cor-0"><%# Eval("PName") %> <span class="cor-p1">.</span></h1>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
   <div class="celular container">
            <div class="celular-imagens">
                <asp:Repeater ID="rptImagens" runat="server">
                    <ItemTemplate>
                        <img src="../img/produtos/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="">
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <asp:Repeater ID="rptDetalhes2" runat="server">
                <ItemTemplate>
                    <div class="celular-conteudo">
                        <p class="font-2-l cor-5"><%# Eval("PDescription") %> </p>
                        <div class="celular-comprar">
                            <a>
                                <asp:Button ID="btnAddCart" runat="server" Text="Comprar Agora" CssClass="botao" OnClick="btnAddCart_Click" /></a>
                            <span class="font-1-xs cor-6">
                                <img src="../img/icones/entrega.svg" alt="">
                                entrega em 5 dias</span>
                            <span class="font-1-xs cor-6">
                                <img src="../img/icones/estoque.svg" alt="">
                                10 em estoque</span>
                        </div>

                        <h2 class="font-1-xs cor-0">Informações</h2>
                        <ul class="celular-informacoes">
                            <li>
                                <img src="../img/icones/bat.png" alt="">
                                <h3 class="font-1-m cor-0">Bateria 7000 mAh</h3>
                                <p class="font-2-xs cor-5">Permite voce viajar distancias inimaginaveis com o seu iFruit.</p>
                            </li>
                            <li>
                                <img src="../img/icones/agua.png" alt="">
                                <h3 class="font-1-m cor-0">A prova d'água</h3>
                                <p class="font-2-xs cor-5">Resistente a uma profundidade de ate 10km.</p>
                            </li>
                            <li>
                                <img src="../img/icones/rastreador (2).svg" alt="">
                                <h3 class="font-1-m cor-0">Rastreador</h3>
                                <p class="font-2-xs cor-5">Rastreador e sistema anti-furto para garantir o seu sossego.</p>
                            </li>
                            <li>
                                <img src="../img/icones/5g.svg" alt="">
                                <h3 class="font-1-m cor-0">Tecnologia 5G</h3>
                                <p class="font-2-xs cor-5">A mais nova e esperada tecnolgia 5G.</p>
                            </li>
                        </ul>
                        <h2 class="font-1-xs cor-0">Ficha Técnica</h2>
                        <ul class="celular-ficha font-2-s cor-4">
                            <li>Ampere<span>3279 mAh</span></li>
                            <li>Resolução<span>1170 x 2532 pixel</span></li>
                            <li>Largura <span>120 cm</span></li>
                            <li>Tela Retina HD<span>4,7 pol.</span></li>
                            <li>Câmera frontal<span>12 MP</span></li>
                            <li>Vídeo Câmera Frontal<span>4K (2160p), 60fps</span></li>
                        </ul>
                    </div>
 </div>
                        </div>
                </ItemTemplate>
            </asp:Repeater>
    </main>


    <article class="produtos-lista container">
        <h2 class="font-1-xxl">escolha o seu<span class="cor-p1">.</span></h2>

        <ul>
            <li>
                <a href="./viewProduto.aspx?PID=36">
                    <img src="../img/produtos/iphone-14.png" alt="iphone 13">
                    <h3 class="font-1-xl">Iphone 14</h3>
                    <span class="font-2-m cor-8">R$ 9300,00</span>
                </a>
            </li>
            <li>
                <a href="./viewProduto.aspx?PID=35">
                    <img src="../img/produtos/macbook.png" alt="macbook">
                    <h3 class="font-1-xl">MacBook Pro 14</h3>
                    <span class="font-2-m cor-8">R$ 10300,00</span>
                </a>
            </li>
        </ul>
    </article>



    <article class="seguro-bg">
        <div class="seguro container">
            <div class="seguro-imagem">
                <img src="../img/fotos/arcade.png" alt="Pessoa parada em cima de uma bicicleta.">
            </div>
            <div class="seguro-conteudo">
                <h2 class="font-1-xxl cor-0">Viva mais tranquilo com o nosso <span class="cor-p1">seguro.</span></h2>
                <p class="font-2-l cor-5">Inscreva-se em um dos planos do nosso seguro iFruit e aproveite diversos benefícios.</p>
                <a class="botao" href="../seguros.aspx">Conheça Mais</a>
            </div>
        </div>
    </article>



</asp:Content>

