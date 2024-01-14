class IntrosController < ApplicationController
  def show
    @user = current_user
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update
      flash[:notice] = "プロフィールを編集しました"
      redirect_to user
    else
      @user = current_user
      redirect_to intro_path(@user.id)
    end
  end
end
