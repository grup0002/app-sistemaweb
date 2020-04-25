class CreateHistoriaclinicas < ActiveRecord::Migration[6.0]
  def change
    create_table :historiaclinicas do |t|
      t.string :diagnostico
      t.references :paciente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
