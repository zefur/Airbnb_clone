class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:login, :new]
  def new
  end

  def create
  end

  def login
  end

end
