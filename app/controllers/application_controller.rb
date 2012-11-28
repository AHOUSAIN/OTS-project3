class ApplicationController < ActionController::Base
  protect_from_forgery
<<<<<<< HEAD
  force_ssl
  

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user
=======
>>>>>>> 08483deb6021caaf7354953db0e04bd5a6088e77
end
