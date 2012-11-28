class ApplicationController < ActionController::Base
  protect_from_forgery
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 6b622f47cdff519ea5c3b963930c258727fcc30f
  force_ssl
  

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user
<<<<<<< HEAD

=======
=======
>>>>>>> 08483deb6021caaf7354953db0e04bd5a6088e77
>>>>>>> 6b622f47cdff519ea5c3b963930c258727fcc30f
end
