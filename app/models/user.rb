class User < ApplicationRecord
  has_secure_password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: {message: "Campo Obligatorio"}
  validates :encrypted_password, length: {minimum:6, too_short: "Minimo %{count} caracteres" }
  validates :encrypted_password, length: {minimum:6, too_short: "Minimo %{count} caracteres" }
  validates :email, uniqueness: {message: "El cedula ya existe" }
  validates_presence_of :password, :on => :create
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
