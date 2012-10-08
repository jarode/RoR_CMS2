class Bit < ActiveRecord::Base
  attr_accessible :bitter, :body, :user_id, :checked_option, :price, :accepted
  
  belongs_to :auction
  belongs_to :user
  has_many :orders
  
  serialize :checked_option
  
  after_save :delete_same, :only => [ :update ]

  protected
  
  def delete_same
  #Record.all.each {|r| r.destroy}
	#puts "nope" if [1, 2, 3, 'A'].any? { |i| (1..9).include?(i) }
	
	#todos = [1,2,3]
	#Todo.destroy(todos)

	#self.accepted = 0
  end
end
