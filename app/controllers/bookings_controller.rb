class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @offer = Offer.find(params[:offer_id])
    @user = current_user
    @booking.user = @user
    if @booking.save
      redirect_to profile_path(@user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :offer_id)
  end

end
