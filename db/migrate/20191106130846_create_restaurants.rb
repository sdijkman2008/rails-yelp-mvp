class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :category
      t.datetime :created_at
      t.string :updated_at
      t.string :datetime

      t.timestamps
    end
  end
end
