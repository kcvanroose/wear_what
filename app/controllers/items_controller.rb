class ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  def new
    @item = Item.new
  end


  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item
    else
      render json: @item.errors
    end
  end

  private

  def item_params
    params.permit(:image, :color, :brand, :user_id, :category_id)
  end
end
