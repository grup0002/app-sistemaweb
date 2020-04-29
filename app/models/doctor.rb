class Doctor < ApplicationRecord
    has_many :citamedica
    validates :cedula, :nombre, :apellidopa, :apellidoma, :especialidad, :telefono, :direccion, presence: {message: "Campo Obligatorio"}
    validates :cedula, numericality: { message: "Debe ser numero" }
    validates :cedula, length: {minimum:8, too_long: "Minimo %{count} caracteres" }
    validates :cedula, length: {minimum:8, too_long: "Minimo %{count} caracteres" }
    validates :telefono, length: {minimum:9, too_long: "Minimo %{count} caracteres" }
    validates :telefono, length: {maximun:9, too_long: "Minimo %{count} caracteres" }
    validates :cedula, uniqueness: {message: "El cedula ya existe" }
end
