class BitsController < ApplicationController
  #before_filter :remove_rabish, :only => [ :create ]

  
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

  
  def update
	@auction = Auction.find(params[:auction_id])
    @bit = @auction.bits.find(params[:id])
    @bit.update_attributes(:accepted => 1)
	redirect_to auction_path(@auction)
	#step after
	
	#Option.all.each do |i| 
	# select all except accepted
	@bit2 = @auction.bits.where(" id NOT IN (#{params[:id]})").where(" accepted NOT IN (1)")
   
    # delete bits only from actepted bit 
    @bit2.all.each{|r| if r.checked_option.any? { |i| @bit.checked_option.include?(i) } 
						r.destroy 
					   end}
    #@bit2.destroy_all
  end
  

  
  #protected

  # Intercepts the params hash
  #def remove_rabish
  #  params[:bit][:checked_option].delete("-")
  #end

  
end
