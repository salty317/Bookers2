class UsersController < ApplicationController
  before_action :authenticate_user!, :current_user_info

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  private
  def current_user_info
    @user = User.find(current_user.id)
  end
end
