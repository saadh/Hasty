class Meal < ActiveRecord::Base
 attr_accessible :name, :image
 mount_uploader :image, ImageUploader
 has_one :cook
 accepts_nested_attributes_for :cook 
 
 

end