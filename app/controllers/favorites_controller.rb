class FavoritesController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_item

  def create
    if @item.user_id != current_user.id
      @favorite = Favorite.new(user_id: current_user.id, item_id: @item.id)
      @favorite.save
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, item_id: @item.id)
    @favorite.destroy
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

end
