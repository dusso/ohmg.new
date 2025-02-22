class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    # Aqui você pode adicionar mais lógica, se necessário
  end
end
