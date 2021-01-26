class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
 
  def index
    @items = Item.includes(:user)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    @order = Order.new
    @comment = Comment.new
    @comments = @item.comments.order(created_at: :desc)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :introduction, :price, :image, :category_id, :item_condition_id, :shipping_payer_id, :city_id, :shipping_day_id).merge(user_id: current_user.id)
  end


end
