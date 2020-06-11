class BooksController < ApplicationController
  before_action :authenticate_user!, :new_book

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @user = User.find(current_user.id)
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @user = User.find(@book.user_id)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
  end

  private
  def new_book
    @new_book = Book.new
  end

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
