# encoding: utf-8
class User < ActiveRecord::Base
  belongs_to :client

  validates :client, :is_client => true

  validates :full_name, presence: true, length: { minimum: 10 }, uniqueness: { :scope => :client_id, :message => "já possui cadastro" }

  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}, uniqueness: { :scope => :client_id }

  validates :password, length: {minimum: 6, maximum: 8}, format: { with: /\A^.*(?=.{6,8})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%?_!-]).*$\Z/i }, :on =>:create

  has_secure_password

  def self.authenticate(email, password)
    user = User.find_by(email: email).try(:authenticate, password)
  end

end
