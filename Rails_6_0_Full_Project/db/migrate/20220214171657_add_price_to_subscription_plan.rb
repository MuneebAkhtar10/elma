class AddPriceToSubscriptionPlan < ActiveRecord::Migration[6.0]
  def change
    add_column :subscription_plans, :price, :float
  end
end
