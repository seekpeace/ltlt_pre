module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    # @current_user = @current_user || User.find_by(id: session[:user_id])
  end

  # Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed and redirects with get request
  # if user submits form when not logged in i.e user deletes cookies before submit
  # then prevents errors
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end

end
