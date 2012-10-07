class BitsController < ApplicationController
  #before_filter :remove_rabish, :only => [ :create ]

  def create
	
    @auction = Auction.find(params[:auction_id])
	#params[:bit][:checked_option] ||= [] 
	#params[:bit][:checked_option] = coptions 
	#{'checked_option' => []}.merge(params[:bit] || {})
	
    @bit = @auction.bits.create(params[:bit])

    redirect_to auction_path(@auction)
  end
  def destroy
    @auction = Auction.find(params[:auction_id])
    @bit = @auction.bits.find(params[:id])
    @bit.destroy
    redirect_to auction_path(@auction)
  end
  
  #protected

  # Intercepts the params hash
  #def remove_rabish
  #  params[:bit][:checked_option].delete("-")
  #end

  
end
