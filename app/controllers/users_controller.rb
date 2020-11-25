class UsersController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update]
  def index
    @users = policy_scope(User).order(create_at: :desc)
  end
  
  def show
    # @user = User.find(params[:id])
  end

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
      params.require(:user).permit(:username, :email, :name, :contact, :location, :reviews, :avatar)
    end
end
