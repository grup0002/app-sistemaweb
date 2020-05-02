class Citamedica < ApplicationRecord
  belongs_to :paciente
  belongs_to :doctor

  validates :hcita, :fcita, :consultorio, :paciente_id, :doctor_id, presence: {message: "Campo Obligatorio"}
  #validates :hcita, length: {maximun:4, too_short: "max %{count} Ejm: 01pm o 1pm"}
  #validates :hcita, length: {minimum:3, too_short: "min %{count} Ejm: 01pm o 1pm"}

end
