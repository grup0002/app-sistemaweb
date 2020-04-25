class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:edit, :update, :destroy]
  def index
    @doctores = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def edit

  end

  def create
    @doctor = Doctor.create(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @doctor.errors.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @doctor.update(doctor_params) 
        format.json  { head :no_content }
        format.js
      else 
        format.json { render json: @doctor.errors.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end
      end
  end

  def destroy
    @doctor.destroy
    respond_to do |format|
     format.json  { head :no_content }
     format.js
    end 
  end

  private 
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

   def doctor_params
    params.require(:doctor).permit(:cedula, :nombre, :apellidopa, :apellidoma, :especialidad, :telefono, :direccion)
  end
end
