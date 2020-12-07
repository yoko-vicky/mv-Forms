class UsersController < ApplicationController
  include UsersHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end
end
