class Meal < ActiveRecord::Base
 attr_accessible :name, :image, :cook_attributes, :tag_list
 acts_as_taggable
 mount_uploader :image, ImageUploader
 has_one :cook
 accepts_nested_attributes_for :cook 
 validates :name, :presence => true 
 end