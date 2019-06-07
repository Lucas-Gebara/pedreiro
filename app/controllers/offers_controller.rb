class OffersController < ApplicationController
  def index
    if params[:query].present?
      @offers = Offer.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @offers = Offer.all
    end
  end

  def show
    @offer = Offer.find(params[:id])
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

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to profile_path
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :start_time, :end_time)
  end
end

