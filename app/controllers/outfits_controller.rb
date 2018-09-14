class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
    render json: @outfits
  end

  def show
    @outfit = Outfit.find(params[:id])
    render json: @outfit
  end

  def create

    @items = params[:items].map do |item|
        Item.find(item)
    end

    @user = User.find(params[:user_id])
    @outfit = Outfit.new(occasion: params[:occasion], user: @user, items: @items)
    
    if @outfit.save
      render json: @outfit
    else
      render json: @outfit.errors
    end
  end

  # private
  #
  # def outfit_params
  #   params.require(:outfit).permit(:user, :items, :occasion)
  # end

end
