class CreateClient < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :country_code
      t.string :phone
      t.string :country
      t.integer :saloon_id

      t.timestamps
    end
  end
end
