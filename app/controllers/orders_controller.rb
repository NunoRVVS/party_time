class OrdersController < ApplicationController

  def index
    @orders = current_user.orders
  end

  def create
    @partyitem = Party_item.find(params[:party_item_id])
    @order = @party_item.orders.new(order_params)
    @order.user = current_user

    if @order.save
      redirect_to @order, notice: 'Ok.'
    else
      render :new, alert: 'Wrong.'
    end
  end

  private

  def order_params
    params.require(:order).permit(:item_quantity, :other_attributes)
  end
end
