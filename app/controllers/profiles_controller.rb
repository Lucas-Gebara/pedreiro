class ProfilesController < ApplicationController
  def show
    @user = current_user
    @portfolio = @user.portfolio
  end
end
