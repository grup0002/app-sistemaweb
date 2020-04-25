class CreateCita < ActiveRecord::Migration[6.0]
  def change
    create_table :cita do |t|
      t.string :hcita
      t.datetime :fcita
      t.string :consultorio
      t.references :doctor, null: false, foreign_key: true
      t.references :paciente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
