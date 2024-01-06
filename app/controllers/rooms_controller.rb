class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.find(params[:id])
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
