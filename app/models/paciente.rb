class Paciente < ApplicationRecord
    has_many :citamedica
    has_many :historiaclinica

    validates :dni, :nombre, :apellido, :sexo, :telefono, :direccion, presence: {message: "Campo Obligatorio"}
    validates :dni, numericality: { message: "Debe ser numero" }
    validates :dni, length: {minimum:8, too_long: "Minimo %{count} caracteres" }
    validates :dni, length: {maximum:8, too_long: "Minimo %{count} caracteres" }
    validates :telefono, length: {minimum:9, too_long: "Minimo %{count} caracteres" }
    validates :telefono, length: {maximum:9, too_long: "Minimo %{count} caracteres" }
    validates :dni, uniqueness: {message: "El Dni ya existe" }



end
