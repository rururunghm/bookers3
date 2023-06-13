class UsersController < ApplicationController
  def index
     @user = User.all
  end
  
  def create
    @user = User.index
    @user.user_id = current_user.id
    @user.save
    redirect_to user_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def show
     @user = User.find(params[:id])
   
  end
end
