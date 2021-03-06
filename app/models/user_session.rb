class UserSession
  include ActiveModel::Model
  
  attr_reader :email, :password

  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

  validates :password, presence: true, length: {minimum: 6, maximum: 8}, format: { with: /\A^.*(?=.{6,8})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%?_!-]).*$\Z/i }

  def initialize(session, user, attributes={})
    @session = session
    @user = user
    @email = attributes[:email]
    @password = attributes[:password]
  end

  def authenticate!
    if @user.present?
      store
    else
      errors.add(:base, :invalid_login)
      false
    end
  end

  def current_user
    User.find(@session[:user_id])
  end

  def user_signed_in?
    @session[:user_id].present?
  end

  def is_admin?
    current_user.admin
  end

  def destroy
    @session[:user_id] = nil
  end

  private

  def store
    @session[:user_id] = @user.id
  end

end
