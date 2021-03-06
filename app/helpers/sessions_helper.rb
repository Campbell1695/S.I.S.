module SessionsHelper
  
  # Logs in the given user.
  def log_in(admin)
    session[:admin_id] = admin.id
  end

  # Returns the current logged-in user (if any).
  def current_admin?(admin)
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_admin.nil?
  end

  # Logs out the current user.
  def log_out
    session.delete(:admin_id)
    @current_admin = nil
  end
end
