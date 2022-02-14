# frozen_string_literal: true

class SubscriptionPlanFeature < ApplicationRecord
  validates :name, presence: true
  belongs_to :subscription_plan
end
