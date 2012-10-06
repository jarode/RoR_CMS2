class Bit < ActiveRecord::Base
  attr_accessible :bitter, :body, :user_id, :checked_option, :price
  
  belongs_to :auction
  belongs_to :user
  has_many :orders
end
