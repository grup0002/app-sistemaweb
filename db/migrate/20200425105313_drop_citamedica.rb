class DropCitamedica < ActiveRecord::Migration[6.0]
  def change
    drop_table :citamedicas
  end
end
