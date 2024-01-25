class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
  end

  def show
    @user = current_user
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update
      flash[:notice] = "ユーザーを編集しました"
      redirect_to user
    else
      render "edit"
    end
  end
end
