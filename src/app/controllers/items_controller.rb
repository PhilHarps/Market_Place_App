class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def user_index
    @items = Item.where(user: current_user)
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    # @item.image.attach(item_params[:image])
  end

  def update
  end

  def destroy
  end

private

def item_params
  params.require(:item).permit(:description, :price, :condition, :gender)
end
end
