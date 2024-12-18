class PartyItemsController < ApplicationController
  # before_action :set_party_item, only: [:show, :edit, :update, :destroy]

  def index
    @party_items = PartyItem.all.sort_by {|item|  -item.id}
    if params[:query].present?
      @party_items = PartyItem.search_by_name(params[:query])
    else
      @party_items = PartyItem.all
    end
    @party_item = PartyItem.new
  end

  def show
    @party_item = PartyItem.find(params[:id])
  end

  def mylistings
    @user = current_user
    @party_items = PartyItem.all
  end

  def new
    @new_item = PartyItem.new
  end

  def create
   @new_item = PartyItem.new(party_item_params)
   @new_item.user = current_user
   @new_item.save

   respond_to do |format|
      if @new_item.save
        format.html { redirect_to party_items_path(@new_item) }
        format.json # Follows the classic Rails flow and look for a create.json view
      else
        format.html { render "party_items/new", status: :unprocessable_entity }
        format.json # Follows the classic Rails flow and look for a create.json view
      end
    end
  end

  def edit
    @party_item = PartyItem.find(params[:id])
  end

  def update
    @party_item = PartyItem.find(params[:id])
    @party_item.update(party_item_params)

    redirect_to party_item_path(@party_item)
  end

  def destroy
    @party_item = PartyItem.find(params[:id])
    @party_item.destroy
    redirect_to party_items_path, status: :see_other
  end

  private

  def set_party_item
    @party_item = PartyItem.find(params[:id])
  end

  def party_item_params
    params.require(:party_item).permit(:name, :description, :price, :photo)
  end
end
