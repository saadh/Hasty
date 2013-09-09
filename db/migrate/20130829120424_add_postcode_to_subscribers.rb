class AddPostcodeToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :postcode, :string
  end
end
