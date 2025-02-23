class HomeController < ApplicationController
  def index
    # Renderiza a página home.html.erb de views/pages
    render 'pages/home'
  end
end
