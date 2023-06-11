<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="carrinho.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />

 <div class="orcamento container">
    <h1>Carrinho de Compras</h1>
     <h4 class="proNameViewCart" runat="server" id="h4noitems"></h4>
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Imagem</th>
          <th scope="col">Produto</th>
          <th scope="col">Quantidade</th>
          <th scope="col">Preço Unitário</th>
          <th scope="col"></th>
        </tr>
      </thead>
             <asp:Repeater ID="rptProdutoCar" runat="server">
         <ItemTemplate>
      <tbody>
        <tr>
           <td><img src="../img/produtos/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" style="width: 70px; height: 70px"/></td>
          <td><%# Eval("PName") %></td>
          <td><%# Eval("Qty") %></td>      
          <td>R$ <%# Eval("PPrice") %></td>
          <td>
           <asp:Button ID="btnRemover" Cssclass="btn btn-danger" runat="server" Text="Remover" OnClick="btnRemover_Click"/></td>
        </tr>
      </tbody>
              </ItemTemplate>
          </asp:Repeater>
    </table>
        <a href="produto.aspx" class="botao">Continuar Comprando</a>

         <div class="orcamento-dados form"  runat="server" id="divAmountSect">
         <div>
             <h5 class=" proNameViewCart">Price Details</h5>
             <asp:Repeater ID="rptTotal" runat="server">
                 <ItemTemplate>
             <div>
                 <label>Total</label>
                 <span class="pull-right" runat="server">R$ <%# Eval("TotalPrice") %></span>
             </div>
                    </ItemTemplate>
                 </asp:Repeater>
         </div>
                <div>
                     <asp:Button ID="btnComprar" CssClass="botao" runat="server" Text="Comprar" OnClick="btnComprar_Click" />
                 </div>
     </div>

</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper-core.min.js" integrity="sha384-ZwZt/S1z37CvLJrP7IBhCYrNF8oz7VcfaSHZufE7ehu1Qh3W8/2Qc1HLnk/TFEof" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</asp:Content>

