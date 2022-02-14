# frozen_string_literal: true

class SubscriptionPlan < ApplicationRecord
  validates :name, :price, presence: true
  before_create :default_status

  has_many :saloons, dependent: :destroy
  has_many :subscription_plan_features, dependent: :destroy

  def default_status
    self.status = 'inactive'
  end
end
