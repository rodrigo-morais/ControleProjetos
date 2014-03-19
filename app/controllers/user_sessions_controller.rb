# -*- coding: utf-8 -*-
class UserSessionsController < ApplicationController

  layout "login"

  def new
    @user_session = UserSession.new(session, nil)
  end

  def create
    user = User.authenticate(params[:user_session][:email], params[:user_session][:password])
    @user_session = UserSession.new(session, user, params[:user_session])
    if @user_session.authenticate!
      redirect_to projects_path
    else
      redirect_to root_path, :alert => t('flash.alert.error_login')
    end
  end

end
