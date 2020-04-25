class Paciente < ApplicationRecord
    has_many :cita
    has_many :historiaclinica
end
