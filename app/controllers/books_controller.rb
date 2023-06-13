class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def edit
    Book.find(params[:id])
  end

  def update
  end

  def create
     @book = Book.new(book_params)
     @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "Book was successfully created."

      redirect_to book_path(@book.id)
    else @books = Book.all.order(id: :asc)
      render :index
    end
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
