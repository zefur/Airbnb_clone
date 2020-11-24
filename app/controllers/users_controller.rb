class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to user_path(@user)
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :name, :contact, :location, :reviews, :avatar)
    end
end
