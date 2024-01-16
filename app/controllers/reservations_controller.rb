class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user_id: current_user.id)
    @user = current_user
  end

  def new
    @reservation = Reservation.new
    @user = current_user
    # @room = Room.find(params[:id])
  end

  def create
    @reservation = current_user.reservations.new(reservation_params)
    if @reservation.save
      flash[:notice] = "予約を完了しました"
      redirect_to reservations_path
    else
      @room = @reservation.room
      render "rooms/show"
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    # @user = current_user
    # @room = Room.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      flash[:notice] = "予約を編集しました"
      redirect_to reservations_path
    else
      render "edit"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    flash[:notice] = "予約を取り消しました"
    redirect_to reservations_path
  end
  private

  def reservation_params
    params.require(:reservation).permit(:checkin, :checkout, :people, :room_id, :total_fee, :user_id, :room_image)
  end
end
