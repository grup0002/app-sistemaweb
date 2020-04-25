class HistoriaclinicasController < ApplicationController
  before_action :set_historiaclinica, only: [:edit, :update, :destroy]
  before_action :set_paciente, only: [:new, :edit, :create]

  def index
    @historiasclinicas = Historiaclinica.all
  end

  def new
    @historiaclinica = Historiaclinica.new
  end

  def edit
    
  end

  def create
    @historiaclinica = Historiaclinica.create(historiaclinica_params)
    respond_to do |format|
      if @historiaclinica.save
        format.json {head :no_content}
        format.js
      else
        debugger
        format.json { render json: @historiaclinica.errors.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @historiaclinica.update(historiaclinica_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @historiaclinica.errors.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end
    end
  end

  def destroy
    @historiaclinica.destroy
    respond_to do |format|
      format.json { head :no_content }
      format.js
    end
  end

  private
  def historiaclinica_params
    params.require(:historiaclinica).permit(:diagnostico, :paciente_id)
  end

  def set_historiaclinica
    @historiaclinica = Historiaclinica.find(params[:id])
  end

  def set_paciente
    @pacientes = Paciente.all
  end

end
