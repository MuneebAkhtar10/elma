class CreateInvoice < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.integer :subscription_plan_id
      t.integer :saloon_id
      t.timestamps
    end
  end
end
