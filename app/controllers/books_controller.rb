class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def edit
  end

  def update
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def destroy
  end

  def show
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end