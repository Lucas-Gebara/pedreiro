class LandingController < ApplicationController
  def show
    @offers = Offer.first(3)
  end
end
