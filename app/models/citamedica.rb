class Citamedica < ApplicationRecord
  belongs_to :paciente
  belongs_to :doctor

  validates :hcita, :fcita, :consultorio, presence: {message: "Campo Obligatorio"}
  validates :hcita, length: {maximun:4, too_long: "Ejm: 01pm o 1pm" }
  validates :hcita, length: {minimum:3, too_long: "Ejm: 01pm o 1pm" }

end
