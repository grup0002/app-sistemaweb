class AddUserIdToCitamedica < ActiveRecord::Migration[6.0]
  def change
    add_column :citamedicas, :user_id, :integer
  end
end
