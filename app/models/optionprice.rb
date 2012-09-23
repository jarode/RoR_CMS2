class Optionprice < ActiveRecord::Base
  attr_accessible :price
  belongs_to :auction
  belongs_to :option
end
