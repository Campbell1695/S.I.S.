class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(email: params[:session][:email].downcase, pin: params[:session][:pin])
    if admin && admin.authenticate(params[:session][:password])
      log_in admin
      redirect_to admin
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
    session.delete(:admin_id)
    @current_admin = nil

    redirect_to root_url
  end
end
