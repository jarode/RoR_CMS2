class Tag < ActiveRecord::Base
  belongs_to :auction
  attr_accessible :name
end
