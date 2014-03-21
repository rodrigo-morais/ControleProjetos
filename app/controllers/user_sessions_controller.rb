# -*- coding: utf-8 -*-
class UserSessionsController < ApplicationController
  before_action :require_no_authentication, only: [:new, :create]
  before_action :require_authentication, only: :destroy

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

  def destroy
    user_session.destroy
    redirect_to root_path, :notice => t('flash.notice.signed_out')
  end

end
