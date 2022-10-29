class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :web_site
      t.boolean :active

      t.timestamps
    end
  end
end
