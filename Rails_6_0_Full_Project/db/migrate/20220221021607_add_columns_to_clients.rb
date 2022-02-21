class AddColumnsToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :email, :string
    add_column :clients, :gender, :string
  end
end
