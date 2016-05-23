class ItemsController < ApplicationController
  respond_to :html, :js

  def create
    @user = User.find(params[:user_id])
    @item = current_user.items.create(item_params)
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])
    @item.destroy

    if @item.destroy
      flash[:notice] = "Item was deleted successfully."
    else
      flash[:alert] = "Item couldn't be deleted. Try again."
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
