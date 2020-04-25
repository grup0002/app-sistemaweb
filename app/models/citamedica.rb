class Citamedica < ApplicationRecord
  belongs_to :paciente
  belongs_to :doctor
end
