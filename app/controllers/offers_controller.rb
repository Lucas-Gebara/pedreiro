class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @user = User.find(params[:user_id])
    @offer = Offer.new
  end

  def create
    @user = User.find(params[:user_id])
    @offer = Offer.new(offer_params)
    @offer.user = @user
    if @offer.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :start_time, :end_time)
  end
end

