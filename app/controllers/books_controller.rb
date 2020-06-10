class BooksController < ApplicationController
  before_action :authenticate_user!

  def create
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
