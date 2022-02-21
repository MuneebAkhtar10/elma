# frozen_string_literal: true

class Client < ApplicationRecord
  validates :name, :phone, :country_code, presence: true

  belongs_to :saloon
end
