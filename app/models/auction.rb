class Auction < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes, :user_id
 
 
  belongs_to :user
  
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
 
  has_many :bits, :dependent => :destroy
  has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
