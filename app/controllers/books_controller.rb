class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(user_params)
    if @book.save
      flash[:notice] = "Book added successfully!"
      redirect_to book_path(@book)
    else
      render 'books/new'
    end
  end

  def index
    @books = Book.all
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      flash[:notice] = "Book deleted successfully!"
      redirect_to books_path
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(user_params)
      flash[:notice] = "Book upated successfully!"
      redirect_to books_path
    else
      render 'books/edit'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  private

	  def user_params
	    params.require(:book).permit(:title, :author, :year, :genre, :description)
	  end
end
