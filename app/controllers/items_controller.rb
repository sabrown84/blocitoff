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

  def index
    @items = Item.visible_to(current_user)
  end

  def new
    @item = Item.new
  end
end


  def destroy
    @item = Item.find(params[:id])

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
