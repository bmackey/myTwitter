module SessionsHelper

  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user?(user)
    user == current_user
  end

    def current_user
      if @current_user.nil?
         @current_user = 
             User.find_by_remember_token(cookies[:remember_token]) 
      end
      @current_user
    end
    
    def signed_in_user
    unless signed_in?
      flash[:notice] = "Please sign in"
      redirect_to signin_url
    end
end 

end