class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
    @book = @user.books
  end
  
  def user_params
    params.require(:user).permit(:title, :body, :profile_image)
  end
end
