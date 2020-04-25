class CitamedicasController < ApplicationController
  before_action :set_citamedica, only: [:edit, :update, :destroy]
  before_action :set_paciente, only: [:new, :edit, :create]
  before_action :set_doctor, only: [:new, :edit, :create]

  def index
    @citasmedicas = Citamedica.all
  end

  def new
    @citamedica = Citamedica.new
  end

  def edit

  end

  def create
    @citamedica = Citamedica.create(citamedica_params)
    respond_to do |format|
      if @citamedica.save
        format.json {head :no_content}
        format.js
      else
        debugger
        format.json { render json: @citamedica.errors.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @citamedica.update(citamedica_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @citamedica.errors.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end
    end
  end

  def destroy
    @citamedica.destroy
    respond_to do |format|
      format.json { head :no_content }
      format.js
    end
  end
  private
  def citamedica_params
    params.require(:citamedica).permit(:hcita, :fcita, :consultorio,  :paciente_id,  :doctor_id)
  end

  def set_citamedica
    @citamedica = Citamedica.find(params[:id])
  end

  def set_paciente
    @pacientes = Paciente.all
  end

  def set_doctor
    @doctores = Doctor.all
  end

end
