class PacientesController < ApplicationController
  before_action :set_paciente, only: [:edit, :update, :destroy]
  
  def index
    @pacientes = Paciente.all
  end

  def new
    @paciente = Paciente.new
  end

  def edit
  end

  
  def create
    @paciente = Paciente.create(paciente_params)

    respond_to do |format|
      if @paciente.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @paciente.errors.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def update
      respond_to do |format|
      if @paciente.update(paciente_params) 
        format.json  { head :no_content }
        format.js
      else 
        format.json { render json: @paciente.errors.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end
      end
  end

  def destroy
     @paciente.destroy
     respond_to do |format|
      format.json  { head :no_content }
      format.js
     end 
  end

  private 
  def set_paciente
    @paciente = Paciente.find(params[:id])
  end

   def paciente_params
    params.require(:paciente).permit(:dni, :nombre, :apellido, :sexo, :telefono, :direccion)
  end

end


