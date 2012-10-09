class Optionprice < ActiveRecord::Base
  attr_accessible :price, :status
  belongs_to :auction
  belongs_to :option
end
