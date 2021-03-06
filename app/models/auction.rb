class Auction < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes, :user_id, :cat_ids, :option_ids, :planned_date, :planned_budget
  belongs_to :user
  has_many :optionprices
  has_many :options, :through => :optionprices
  accepts_nested_attributes_for :optionprices
  
  has_and_belongs_to_many :cats
  has_many :orders, :dependent => :destroy
  
  
  
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
 
  has_many :bits, :dependent => :destroy
  has_many :tags
  
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
