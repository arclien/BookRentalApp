class RentalsController < ApplicationController
  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(user_params)
    if @rental.save
      flash[:notice] = "#{@rental.book.title} has been rented to #{@rental.user.email}!"
      redirect_to books_path
    else
      flash[:notice] = "Sorry! That book could not be rented out"
      render 'rentals/new'
    end
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
	  def user_params
	    params.require(:rental).permit(:date, :user_id, :book_id)
	  end
end