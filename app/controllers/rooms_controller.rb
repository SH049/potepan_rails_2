class RoomsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @rooms = Room.all
    if params[:search_address].present?
      search_address_condition = "%#{params[:search_address]}%"
      @rooms = @rooms.where('room_address LIKE ?', search_address_condition)
    end

    if params[:search_name_detail].present?
      search_name_detail_condition = "%#{params[:search_name_detail]}%"
      @rooms = @rooms.where('room_name LIKE ? OR room_detail LIKE ?', search_name_detail_condition, search_name_detail_condition)
    end
  end

  def new
    @room = Room.new
    @user = current_user
  end

  def create
    @room = current_user.rooms.new(room_params)
    if @room.save
      flash[:notice] = "施設を登録しました"
      redirect_to rooms_path
    else
      @user = current_user
      render "new"
    end
  end

  def show
    @room = Room.find(params[:id])
    @user = current_user
    @reservation = Reservation.new
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      flash[:notice] = "施設を編集しました"
      redirect_to rooms_path
    else
      render "edit"
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    flash[:notice] = "施設を削除しました"
    redirect_to rooms_path
  end

  def own
    @rooms = Room.where(user_id: current_user.id)
    @user = current_user
  end

  private

  def room_params
    params.require(:room).permit(:room_name, :room_detail, :room_fee, :room_address, :room_image, :room_image_cache)
  end
end
