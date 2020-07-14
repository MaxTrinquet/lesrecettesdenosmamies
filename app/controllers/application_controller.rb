class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  # Redirection after sign_in (User versus Admin)
  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(User)
      user_recipes_path(resource_or_scope)
    elsif resource_or_scope.is_a?(AdminUser)
      admin_dashboard_path(resource_or_scope)
    end
  end

  # For additional fields in app/views/devise/registrations/new.html.erb
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name , :password, :family_id])
  end

  def user_connected
    # Look up the current user based on user_id in the session cookie:
    #TIP: The ||= part ensures this helper doesn't hit the database every time a user hits a web page. It will look it up once, then cache it in the @current_user variable.
    #This is called memoization and it helps make our app more efficient and scalable.
    @user_connected ||= User.find(session[:user_id]) if session[:user_id]
  end
end
