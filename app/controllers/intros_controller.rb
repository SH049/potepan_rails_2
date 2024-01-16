class IntrosController < ApplicationController
  def show
    @user = current_user
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    
    if @user.update(intro_params)
      flash[:notice] = "プロフィールを編集しました"
      redirect_to intro_path(@user)
    else
      @user = current_user
      render "edit"
    end
  end

  private

  def intro_params
    params.require(:user).permit(:name, :profile, :profile_image)
  end
  
end
