class Bit < ActiveRecord::Base
  belongs_to :auction
  attr_accessible :bitter, :body
end
