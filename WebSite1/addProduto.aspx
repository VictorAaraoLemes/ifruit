<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="addProduto.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <main>
        <div class="titulo-bg">
            <div class="titulo container">
                <p class="font-2-l-b cor-5">Adicionar Produto</p>
                <h1 class="font-1-xxl cor-0">Prencha os dados dos produtos<span class="cor-p1">.</span></h1>
            </div>
        </div>
        <div class="contato container">
            <section class="add-dados" aria-label="Endereço">
                <h2 class="font-1-m cor-0">Adicione as imagens</h2>
                <div class="add-endereco font-2-s cor-4">
                    <asp:FileUpload ID="prodImg01" runat="server" />
                </div>
                <div class="add-endereco font-2-s cor-4">
                    <asp:FileUpload ID="prodImg02" runat="server" />
                </div>
                <div class="add-endereco font-2-s cor-4">
                    <asp:FileUpload ID="prodImg03" runat="server" />
                </div>
            </section>
            <section class="contato-formulario" aria-label="Formulário">
                <div class="form">
                    <div>
                        <label>Nome</label>
                        <asp:TextBox ID="txtNomeP" runat="server" CssClass="form-control" placeholder="Digite o Nome do Produto"></asp:TextBox>
                    </div>
                    <div>
                        <label>Valor</label>
                        <asp:TextBox ID="txtPreco" Type="number" min="0.00" max="10000.00" step="0.01" runat="server" placeholder="Digite o Valor do Produto"></asp:TextBox>
                    </div>
                    <div>
                        <label>Descrição</label>
                        <asp:TextBox ID="txtDescricao" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </div>
                    <div class="">
                        <label>Categoria</label>
                        <asp:DropDownList ID="ddlCategoria" runat="server" DataSourceID="SqlDataSource1" DataTextField="CatName" DataValueField="CatID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdb %>" SelectCommand="SELECT * FROM [tblCategory]"></asp:SqlDataSource>
                    </div>
                    <asp:Button ID="btnEnviar" class="btn btn-success" runat="server" Text="Adicionar Produto" OnClick="btnEnviar_Click" />
                    <div>
                        <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="false"></asp:Label>
                    </div>
                </div>
            </section>
        </div>
    </main>
</asp:Content>

