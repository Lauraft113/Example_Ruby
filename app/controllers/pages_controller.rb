class PagesController < ApplicationController
	def index

		route_to_redirect = if user_signed_in?
								user_path(current_user) #user_path -> nos genera la ruta del usuario (actual para ir alli ... 
							else  
								new_user_session_path
							end

		redirect_to(route_to_redirect)
	end
end

#current_user -> devuelve un usuario activo o con sesion activa
#user_signed_in? -> nos devueleve T o F dependidendo si esta logueado
#sign_in(user) -> loguear un usuario
# -> se carga la sesion de un usuario