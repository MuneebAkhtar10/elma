class ResetSalon < ActiveRecord::Migration[6.0]
  def change
    Saloon.delete_all
  end
end
