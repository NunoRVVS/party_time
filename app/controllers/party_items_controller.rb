class PartyItemsController < ApplicationController

  # before_action :set_party_item, only: [:show, :edit, :update, :destroy]

  def index
    @partyItems = PartyItem.all
  end

  def show
    @partyItem = PartyItem.find(params[:id])
  end

  private


end
