class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:notice] = "予約を完了しました"
      redirect_to reservations_path
    else
      render "new"
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @user = current_user
    @room = Room.find(params[:id])
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
    params.require(:reservation).permit(:checkin, :checkout, :people)
  end
end
