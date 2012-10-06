class OrdersController < ApplicationController
  def create
	@auction = Auction.find(params[:auction_id])	
    @order = @auction.orders.create(params[:order])
    redirect_to auction_path(@auction)
  end
end
