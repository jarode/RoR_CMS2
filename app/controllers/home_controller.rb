class HomeController < ApplicationController
  def index
    @users = User.all
	@auctions = Auction.all
	@tags = Tag.all
  end
end
