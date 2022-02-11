class CreateSaloon < ActiveRecord::Migration[6.0]
  def change
    create_table :saloons do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country_code
      t.string :phone
      t.float :longitude
      t.float :latitude
      t.string :status

      t.timestamps
    end
  end
end
