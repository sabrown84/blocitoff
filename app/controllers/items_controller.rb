class ItemsController < ApplicationController
  respond_to :html, :js

  def create
    @item.user = current_user
    @item = current_user.items.create(item_params)

    if @item.save
      flash[:notice] = "Item saved successfully."
    else
      flash[:alert] = "Item failed to save."
    end

    respond_to do |format|
      format.html
      format.js
    end
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
