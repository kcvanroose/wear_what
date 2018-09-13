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

    @category = Category.find_by(name: params[:category_id])
    @user = User.find(params[:user_id])
    @item = Item.new(color: params[:color], brand: params[:brand], user: @user, category: @category)
    if @item.save
      @item.image = params[:image]
      @item.save
      render json: @item
    else
      render json: @item.errors
    end

  end

end
