class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :string
      t.string :phone

      t.timestamps
    end
  end
end
