class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessible :description, :name, :photo, :category_id
  accepts_nested_attributes_for :category

  has_attached_file :photo, :styles => {:small=>"150x150!"},
			    :url=>"/assets/products/:id/:style/:basename.:extension", 
			    :path=>":rails_root/public/assets/products/:id/:style/:basename.:extension"
		    
end
