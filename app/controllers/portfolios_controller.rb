class PortfoliosController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @portfolio = @user.portfolio
  end

  # def edit
  #   @portfolio = Portfolio.find(params[:id])
  # end

  # def update
  #   if @portfolio.update(portfolio_params)
  #     redirect_to portfolio_path(@portfolio)
  #   else
  #     render :edit
  #   end
  # end

  def new
    @user = User.find(params[:user_id])
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to user_path
    else
      render :new
    end
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
    redirect_to user_path(@portfolio.user)
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:description, :photo)
  end
end
