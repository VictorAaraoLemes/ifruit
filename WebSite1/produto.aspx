<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="produto.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <main>
        <div class="titulo-bg">
            <div class="titulo container">
                <p class="font-2-l-b cor-5">Escolha o melhor para você</p>
                <h1 class="font-1-xxl cor-0">nossos aparelhos<span class="cor-p6">.</span></h1>
            </div>
        </div>

        <asp:Repeater ID="rptProdutos" runat="server">
            <ItemTemplate>
                <div class="produtos container">
                    <div class="produtos-imagem">
                        <img src="./img/produtos/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>">
                        <span class="font-2-m cor-0">R$ <%# Eval("PPrice") %></span>
                    </div>
                    <div class="produtos-conteudo">
                        <h2 class="font-1-xl"><%# Eval("PName") %></h2>
                        <p class="font-2-s cor-8"><%# Eval("PDescription") %></p>
                        <ul class="font-1-m cor-8">
                            <li>
                                <img src="./img/icones/bat.png" alt="">
                                Bateria 7000 mAh
                            </li>
                            <li>
                                <img src="./img/icones/5g.svg" alt="">
                                Tecnologia 5G
                            </li>
                            <li>
                                <img src="./img/icones/agua.png" alt="">
                                A prova d'água
                            </li>
                            <li>
                                <img src="./img/icones/rastreador (2).svg" alt="">
                                Rastreador
                            </li>
                        </ul>
                        <a class="botao seta" href="viewProduto.aspx?PID=<%# Eval("PID") %>">Mais Sobre</a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </main>

</asp:Content>

