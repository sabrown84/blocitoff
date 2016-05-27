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
    @item = current_user.items.create(item_params)
    @item.user = @user
    if @item.save
      redirect_to @item, notice: "To-do item saved."
    else
      flash[:error] = "Error saving - Please try again."
      render :new
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "To-do item deleted."
    else
      flash[:error] = "Error - Please try again."
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
