class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_user

  #Verificar en el metodo si es un administrador o un usuario :is_admin en el archivo Application_controller en el method update y index.
  before_action :is_admin?, only: [:update, :index]


  # GET /users
  def index
  
    @users = User.all
    #Estructura de json.
    render json:  {"error": [], "values": @users}, status: :ok
  end

  # GET /users/1
  def show
   
    render json: @user

  end

  # POST /users
  def create

    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /users/1
  def update

    if @user.update(user_params)
      #Error no contiene nada porque es un admin y los valores que trae la variable @user.
      render json:  {"error": [], "values": @user}, status: :accepted
    else
       #Error si contiene porque no es un admin y los valores null.
      render json: {"error": @user.errors, "values":[]}, status: :unprocessable_entity
    end

  end

  # DELETE /users/1
  def destroy

    @user.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user

      @user = User.find(params[:id])

    end

    # Only allow a trusted parameter "white list" through.
    def user_params

      params.require(:user).permit(:email, :password, :password_confirmation, :role_id)
      
    end
end
