class ItemsController < ApplicationController
  before_action :authorise, only: [:create, :update, :destroy]

  def index
    @items = Item.all
  end

  def user_index
    @items = Item.where(user: current_user)
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
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

def authorise
  if current_user == self.user || !current_user.has_role?(:admin)

    flash[:alert] = "You are not authorised to do this!"
      redirect_to root_path
  end

end
end
