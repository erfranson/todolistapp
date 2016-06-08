class ItemsController < ApplicationController
  def new
    @items = Item.new
  end

  def create
    @user = User.find(params[:user_id])
    @items = @user.items.new(params.require(:item).permit(:name))

    if @items.save
       flash[:notice] = "\"#{@items.name}\" was added to your list."
     else
       flash[:alert] = "There was error saving item."
     end
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:user_id])
    @items = @user.items.find(params[:id])

    if @items.destroy
      flash[:notice] = "\"#{@items.name}\" was deleted successfully."
    else
      flash[:alert] = "There was a error saving post."
    end
      respond_to do |format|
       format.html
       format.js
     end
   end
 end
