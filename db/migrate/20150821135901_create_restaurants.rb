class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :Name
      t.text :Decription
      t.string :Location
      t.string :Tag

      t.timestamps
    end
  end
end
