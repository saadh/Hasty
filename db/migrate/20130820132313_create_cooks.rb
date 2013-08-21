class CreateCooks < ActiveRecord::Migration
  def change
    create_table :cooks do |t|
      t.string :cook_name
      t.text :bio

      t.timestamps
    end
  end
end
