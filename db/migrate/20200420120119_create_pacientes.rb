class CreatePacientes < ActiveRecord::Migration[6.0]
  def change
    create_table :pacientes do |t|
      t.integer :dni
      t.string :nombre
      t.string :apellido
      t.string :sexo
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
