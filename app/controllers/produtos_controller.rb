class ProdutosController < ApplicationController

     def index
          @produtos_nome = Produto.order(:nome).limit 5 
          @produtos_preco = Produto.order(:preco).limit 2    
     end

     def create
          value = params.require(:produto).permit!
          produto = Produto.create value
     end
     
end
