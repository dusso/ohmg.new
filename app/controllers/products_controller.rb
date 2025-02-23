class ProductsController < ApplicationController
  def index
    @products = Product.all
    # Renderiza a página de produtos localizada em views/pages/products.html.erb
    render 'pages/products'
  def new
    @product = Product.new
  end
end