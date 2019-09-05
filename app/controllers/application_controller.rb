class ApplicationController < ActionController::API
    include Knock::Authenticable

    #Methodo para ver si el usuario es administrador o un usuario normal.
   
    def is_admin?

        if current_user.role.name_roles == "user"
            render json: {"error": "you are not admin",
                           "values": []}, status: :unauthorized
        end
   end
end
