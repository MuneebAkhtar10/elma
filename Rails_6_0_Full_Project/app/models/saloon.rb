# frozen_string_literal: true

class Saloon < ApplicationRecord
  validates :name, :address, :city, :phone, :longitude, :latitude, :country_code, presence: true
  before_create :default_status
  before_commit :invoice_creation

  has_many :clients, dependent: :destroy
  belongs_to :subscription_plan

  def default_status
    self.status = 'Inactive'
  end

  def invoice_creation
    salon = self.id
    Invoice.create!(subscription_plan_id: self.subscription_plan.id, saloon_id: salon)
  end
end
