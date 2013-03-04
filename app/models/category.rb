class Category < ActiveRecord::Base
  
  has_many :products
  
  attr_accessible :name, :id
  
  accepts_nested_attributes_for :products
  
end
