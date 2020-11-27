class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update]
  def index
    @users = policy_scope(User).order(create_at: :desc)
  end

  def show
    # @user = User.find(params[:id])
  end

  def create
  end

  #  def after_sign_in_path_for(resource)
  #   redirect_to skills_path
  # end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end


  private

    def set_user
    @user = User.find(params[:id])
    authorize @user
    end

    def user_params
      params.require(:user).permit(:username, :email, :name, :contact, :location, :reviews, :avatar,)
    end
end
