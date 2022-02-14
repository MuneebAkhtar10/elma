class CreateSubscriptionPlanFeature < ActiveRecord::Migration[6.0]
  def change
    create_table :subscription_plan_features do |t|
      t.string :name
      t.string :engish_translation
      t.integer :subscription_plan_id
    end
  end
end
