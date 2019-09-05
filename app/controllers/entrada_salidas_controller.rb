class EntradaSalidasController < ApplicationController
  before_action :set_entrada_salida, only: [:show, :update, :destroy]
  before_action :authenticate_user
  before_action :is_admin?

  # GET /entrada_salidas
  def index
    @entrada_salidas = EntradaSalida.all

    render json: @entrada_salidas
  end

  # GET /entrada_salidas/1
  def show
    render json: @entrada_salida
  end

  # POST /entrada_salidas
  def create
    @entrada_salida = EntradaSalida.new(entrada_salida_params)

    if @entrada_salida.save
      render json: @entrada_salida, status: :created, location: @entrada_salida
    else
      render json: @entrada_salida.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entrada_salidas/1
  def update
    if @entrada_salida.update(entrada_salida_params)
      render json: @entrada_salida
    else
      render json: @entrada_salida.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entrada_salidas/1
  def destroy
    @entrada_salida.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrada_salida
      @entrada_salida = EntradaSalida.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entrada_salida_params
      params.require(:entrada_salida).permit(:datetime, :user_id)
    end
end
