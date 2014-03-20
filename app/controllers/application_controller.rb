class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  config.encoding = "utf-8"

  delegate :current_user, :user_signed_in?, :is_admin?, to: :user_session
  helper_method :current_user, :user_signed_in?, :is_admin?

  def user_session
    UserSession.new(session, nil)
  end

  def require_authentication
    unless user_signed_in?
      redirect_to login_path, alert: t('flash.alert.needs_login')
    end
  end

  def require_no_authentication
    if user_signed_in?
      redirect_to root_path, notice: t('flash.notice.already_logged_in')
    end
  end

  def client
    @client = nil
    @client ||= Client.find(params[:client_id]) if params.has_key?(:client_id)
  end

  def can_access?
    redirect_to projects_path unless current_user.client == client || current_user.admin
  end

end
