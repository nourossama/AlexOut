class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :tag
      t.string :rating

      t.timestamps
    end
  end
end
