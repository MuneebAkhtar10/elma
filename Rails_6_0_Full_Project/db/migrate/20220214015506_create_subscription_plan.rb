class CreateSubscriptionPlan < ActiveRecord::Migration[6.0]
  def change
    create_table :subscription_plans do |t|
      t.string :name
      t.string :engish_translation
      t.string :status
      t.integer :saloon_id
      t.datetime :subscription_taken_at
      t.datetime :subscription_expires_at_at
    end
  end
end
