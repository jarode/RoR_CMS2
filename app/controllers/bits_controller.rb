class BitsController < ApplicationController
  def create
    @auction = Auction.find(params[:auction_id])
    @bit = @auction.bits.create(params[:bit])
    redirect_to auction_path(@auction)
  end
  def destroy
    @auction = Auction.find(params[:auction_id])
    @bit = @auction.bits.find(params[:id])
    @bit.destroy
    redirect_to auction_path(@auction)
  end
end
