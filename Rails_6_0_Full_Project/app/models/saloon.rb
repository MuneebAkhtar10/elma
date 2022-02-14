# frozen_string_literal: true

class Saloon < ApplicationRecord
  validates :name, :address, :city, :phone, :longitude, :latitude, :country_code, presence: true
  before_create :default_status

  has_many :clients, dependent: :destroy
  belongs_to :subscription_plan

  def default_status
    self.status = 'Active'
  end
end
