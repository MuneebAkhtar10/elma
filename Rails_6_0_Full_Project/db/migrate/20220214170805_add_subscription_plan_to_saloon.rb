class AddSubscriptionPlanToSaloon < ActiveRecord::Migration[6.0]
  def change
    add_column :saloons, :subscription_plan_id, :integer
  end
end
