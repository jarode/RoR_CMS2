class Order < ActiveRecord::Base
  attr_accessible :user_id, :bit_id
  belongs_to :user
  belongs_to :auction
  has_many :bits
end