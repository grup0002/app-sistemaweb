class Historiaclinica < ApplicationRecord
  belongs_to :paciente
  validates :diagnostico, presence: {message: "Campo Obligatorio"}
end
