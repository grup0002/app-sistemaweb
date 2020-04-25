class AddUserIdToCita < ActiveRecord::Migration[6.0]
  def change
    add_column :cita, :user_id, :integer
  end
end
