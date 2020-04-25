class DropTbdoctor < ActiveRecord::Migration[6.0]
  def change
    drop_table :tbdoctors
  end
end
