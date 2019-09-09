class EntradaSalidasController < ApplicationController
  before_action :set_entrada_salida, only: [:show, :update, :destroy]
  before_action :authenticate_user
  before_action :is_admin?

  # GET /entrada_salidas
  def index
     #Filtrar por parametros user_id.
    @entrada_salidas = EntradaSalida.all if params["user_id"].nil?
    @entrada_salidas = EntradaSalida.find_by(user_id: params[:user_id]) unless params["name_roles"].nil?

    render json:  {"error": [], "values": @entrada_salidas}, status: :ok
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
       #Error no contiene nada porque es un admin y los valores que trae la variable @user.
       render json:  {"error": [], "values": @entrada_salida }, status: :accepted
    else
       #Error si contiene porque no es un admin y los valores null.
      render json: {"error": @entrada_salida.errors, "values":[]}, status: :unprocessable_entity
    end
  end

  # DELETE /entrada_salidas/1
  def destroy
    render json: { message: 'entrada/salidas Successfully deleted' }, status: 202 if  @entrada_salida.destroy
    render json: { message: 'entrada/salidas Unsuccessfully deleted' }, status: 204 unless  @entrada_salida.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrada_salida
      @entrada_salida = EntradaSalida.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entrada_salida_params
      params.require(:entrada_salida).permit(:datetimeEntrance, :user_id, :datetimeExit)
    end
end
