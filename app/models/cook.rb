class Cook < ActiveRecord::Base
  attr_accessible :cook_name, :bio
  belongs_to :meal 
   
end
