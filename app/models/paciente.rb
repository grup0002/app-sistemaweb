class Paciente < ApplicationRecord
    has_many :citamedica
    has_many :historiaclinica
end
