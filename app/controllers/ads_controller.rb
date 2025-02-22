class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(ad_params)
    if @ad.save
      redirect_to ads_path, notice: 'Anúncio criado com sucesso!'
    else
      render :new
    end
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :description, :price)
  end
end
