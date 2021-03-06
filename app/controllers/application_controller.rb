class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :logged_in?

    def logged_in?
      session[:login]
    end

    private
    def authenticate
      login = authenticate_or_request_with_http_basic do |username, password|
        username == "hrose" && password == "polsfuss"
      end
      session[:login] = login
    end

    def do_logout
      session[:login] = nil
    end
end
