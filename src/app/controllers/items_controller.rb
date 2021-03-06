class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy, :new]
  before_action :fetch_item, only: [:show, :edit, :update, :destroy]
  before_action :authorise, only: [:edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def home
  end

  def user_index
    @items = Item.where(user: current_user)
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.image.attach(item_params[:image])
    @item.user = current_user
    if @item.save
      flash[:alert] = "Success, Your item has been posted!"
      redirect_to @item
    else
      flash[:alert] = "Failure!"
      render :new
    end
    
    
  end

  def edit
  end

  def update
    if @item.update(item_params)
      flash[:alert] = "Success, Your item has been edited!"
      redirect_to @item
    else
      flash[:alert] = "Failure!"
      render :edit
    end
  end

  def destroy
    @item.destroy
  end

  private

  def fetch_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:description, :price, :size, :condition, :gender, :image)
  end

  def authorise
    if !(current_user == @item.user || current_user.has_role?(:admin))
      flash[:alert] = "You are not authorised to do this!"
      redirect_to root_path
    end
  end
end
