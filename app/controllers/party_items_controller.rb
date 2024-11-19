class PartyItemsController < ApplicationController
  # before_action :set_party_item, only: [:show, :edit, :update, :destroy]

  def index
    @partyItems = PartyItem.all
  end

  def show
    @partyItem = PartyItem.find(params[:id])
  end

  private

  def set_party_item
    @partyItem = PartyItem.find(params[:id])
  end
end
