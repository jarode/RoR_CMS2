class Bit < ActiveRecord::Base
  belongs_to :auction
  attr_accessible :bitter, :body, :user_id, :checked_option, :price
  belongs_to :user
end
