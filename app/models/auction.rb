class Auction < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes, :user_id, :cat_ids, :option_ids
  has_many :optionprices
  has_many :options, :through => :optionprices
  
  
  has_and_belongs_to_many :cats
 
  belongs_to :user
  
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
 
  has_many :bits, :dependent => :destroy
  has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
