class BookingsController < ApplicationController
  def new
    @user = current_user
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to user_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :offer_id)
  end
end
