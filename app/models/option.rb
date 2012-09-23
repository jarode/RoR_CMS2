class Option < ActiveRecord::Base
  attr_accessible :name
  has_many :optionprices
  has_many :auctions, :through => :optionprices
end
