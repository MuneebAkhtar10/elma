class ResetClient < ActiveRecord::Migration[6.0]
  def change
    Client.delete_all
    Invoice.delete_all
  end
end
