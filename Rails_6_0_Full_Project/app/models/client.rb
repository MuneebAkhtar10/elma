# frozen_string_literal: true

class Client < ApplicationRecord
  validates :name, :address, :phone, :country_code, :country, presence: true

  belongs_to :saloon
end
