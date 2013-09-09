class Restaurant < ActiveRecord::Base
  attr_accessible :name, :postcode, :city, :cuisine, :tag_list
  acts_as_taggable
end
