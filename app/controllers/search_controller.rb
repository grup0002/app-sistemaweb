class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"
    @pacientes = Paciente.where("dni LIKE ?",palabra)
    raise @pacientes.to_yaml

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render json: @pacientes }
      format.js
    end 
  end
end
