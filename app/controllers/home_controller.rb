class HomeController < ApplicationController
def show
  end

  def index
  end

  def new

  end

  def create

  end
  def update
     book = Book.find(params[:id])
     book.update(book_params)
     redirect_to new_book_path
  end

  def edit
  end

  private
end
