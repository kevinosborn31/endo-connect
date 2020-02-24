class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:email]

    # successful login?
    if user.present? && user.authenticate( params[:password] )
      session[:user_id] = user.id
      redirect_to '/' # go to show page (/users/10 etc)
    else
      flash[:error] = 'Invalid email or password'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
