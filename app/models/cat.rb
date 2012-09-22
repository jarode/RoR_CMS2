class Cat < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :auctions, :join_table => :auctions_cats
end
