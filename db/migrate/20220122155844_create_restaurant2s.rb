class CreateRestaurant2s < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant2s do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.string :chef_name

      t.timestamps
    end
  end
end
