class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      flash[:alert] = "Success, Your order has been submitted!"
      redirect_to @order
    else
      flash[:alert] = "Failure!"
      render :new
    end
  end

  def update
    if @order.update(order_params)
      flash[:alert] = "Success, Your item has been edited!"
      redirect_to @order
    else
      flash[:alert] = "Failure!"
      render :edit
  end

  def destroy
    @order = Order.destroy
  end

   private

  def fetch_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user, :items)
  end

  def authorise
    if !(current_user == @order.user || current_user.has_role?(:admin))
      flash[:alert] = "You are not authorised to do this!"
      redirect_to root_path
    end
  end
end
end
