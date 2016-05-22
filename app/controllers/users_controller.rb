class UsersController < ApplicationController
  def show
    @user = current_user
    @items = @user.items
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
