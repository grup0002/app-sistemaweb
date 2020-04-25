class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.integer :cedula
      t.string :nombre
      t.string :apellidoma
      t.string :apellidopa
      t.string :especialidad
      t.integer :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
