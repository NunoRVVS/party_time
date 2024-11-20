class OrdersController < ApplicationController

  def index
    @orders = current_user.orders
  end

  def new
    @party_item = PartyItem.find(params[:party_item_id])
    @user = current_user
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
    @party_item = @order.party_item
    @user = @order.user
  end

  def create
    @party_item = PartyItem.find(params[:party_item_id])
    @order = Order.new(order_params)
    @order.user = current_user
    @order.party_item = @party_item
    @order.amount = (@order.end_date - @order.start_date).to_i * @party_item.price

    if @order.save
      redirect_to order_path(@order), notice: 'Order Successfully Placed'
    else
      render :new, status: :unprocessable_entity, alert: 'Error in placing your order'
    end
  end

  def orders_to_fulfill
    @orders = Order.all.select{|order| order.party_item.user == current_user}
  end
  private

  def order_params
    params.require(:order).permit(:start_date, :end_date, :amount)
  end
end
