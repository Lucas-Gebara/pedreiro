class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @user = current_user
    @offer = Offer.new
  end

  def create
    @user = current_user
    @offer = Offer.new(offer_params)
    @offer.user = @user
    if @offer.save
      redirect_to profile_path(@user.id)
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :start_time, :end_time)
  end
end

