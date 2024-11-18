class PartyItemController < ApplicationController
  before_action :set_party_item, only: [:show, :edit, :update, :destroy]

  def index
    @partyItems = PartyItem.all
  end

  def show

  end

  private

  def set_party_item
    @partyItem = PartyItem.find(params[:id])
  end

end
