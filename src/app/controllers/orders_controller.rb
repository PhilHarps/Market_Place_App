require 'stripe'

class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @item = Item.find(params[:item_id])
    
    Stripe.api_key = Rails.application.credentials.dig(:stripe, :api_key)
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @item.description,
        description: "Size: #{@item.size}",
        amount: (@item.price * 100).to_i,
        currency: 'aud',
        quantity: 1
      }],
      success_url: "#{root_url}/orders/complete",
      cancel_url: "#{root_url}/orders/cancel"
    )
  end

  def complete
    redirect_to root_path
    flash[:notice] = "Success Your Order has been completed!"
  end

  def cancel
    render html: "<h2> Your order has been cancelled</h2>".html_safe
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
