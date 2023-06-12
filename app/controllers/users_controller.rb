class UsersController < ApplicationController
  def index
  end
  
  def create
  end

  def edit
  end

  def update
  end

  def show
    @user =　User.find(params[:id]) 
    @books = @user.books   
  end
end
