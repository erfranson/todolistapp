class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @items = @user.items.create(params.require(:item).permit(:name))
    redirect_to @user
  end
end
