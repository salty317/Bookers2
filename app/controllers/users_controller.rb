class UsersController < ApplicationController
  before_action :authenticate_user!, :new_book

  def index
    @user = User.find(current_user.id)
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  private
  def new_book
    @new_book = Book.new
  end

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
