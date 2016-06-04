class ItemsController < ApplicationController
  def index
    @items = Item.visible_to(current_user)
  end

  def new
    @item = Item.new
  end

  def create
    @user = current_user
    @items = @user.items
    @item = current_user.items.build(item_params)
    @item.user = @user
    if @item.save
      flash[:notice] = "To-do item saved."
    else
      flash.now[:alert] = "Error saving - Please try again."
      render :create
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "To-do item deleted."
      redirect_to @item
    else
      flash.now[:alert] = "Error - Please try again."
      render :create
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
