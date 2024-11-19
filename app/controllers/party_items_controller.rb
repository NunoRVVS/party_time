class PartyItemsController < ApplicationController
  # before_action :set_party_item, only: [:show, :edit, :update, :destroy]

  def index
    @partyItems = PartyItem.all
    @partyItem = PartyItem.new
  end

  def show
    @party_item = PartyItem.find(params[:id])
  end

  def destroy
    @party_item = PartyItem.find(params[:id])
    @party_item.destroy
    redirect_to party_items_path, status: :see_other
  end

  private

  def set_party_item
    @partyItem = PartyItem.find(params[:id])
  end
end
