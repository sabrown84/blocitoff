class ItemsController < ApplicationController
  respond_to :html, :js

  def create
    @user = current_user
    @item.user = @user
    @item = current_user.items.build(item_params)
    @items = @user.items

    if @item.save
      respond_to do |format|
        format.html { redirect_to user_path(current_user), notice: "Item added successfully!"}
        format.js
      end
    else
      flash[:alert] = "Item failed to save."
      redirect_to user_path(current_user)
    end
  end

  def index
    @items = Item.visible_to(current_user)
  end

  def new
    @item = Item.new
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was deleted successfully."
    else
      flash[:alert] = "Item couldn't be deleted. Try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
