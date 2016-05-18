class UsersController < ApplicationController

  def show
    @user = params[:id].blank? ? current_user : User.find(params[:id])
  end
end
