class Cita < ApplicationRecord
  belongs_to :tbdoctor
  belongs_to :paciente
end
