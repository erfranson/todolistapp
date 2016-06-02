class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @items = @user.items.create(params.require(:item).permit(:name))

    if @items.save
       flash[:notice] = "To do item saved"
     else
       flash[:alert] = "Error saving item ."
     end
    redirect_to @user
  end
end
