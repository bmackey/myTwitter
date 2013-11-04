module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
  end

  def current_user=(user)
      @current_user = user
    end

    def current_user
      if @current_user.nil?
         @current_user = 
             User.find_by_remember_token(cookies[:remember_token]) 
      end
      @current_user
    end
end