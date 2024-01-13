class UsersController < ApplicationController
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
      flash[:notice] = "施設を編集しました"
      redirect_to user
    else
      render "edit"
    end
  end
end
