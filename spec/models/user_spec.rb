# encoding: utf-8
require 'spec_helper'

describe User do

  context 'validates column e-mail' do

    it 'validates presence of e-mail' do
      user = User.new
      user.valid?
      user.errors.should have_key(:email), "E-mail isn't present in user."
    end

    it 'validates format of e-mail with incorret value' do
      user = User.new
      user.email = 'teste'
      user.valid?
      user.errors.should have_key(:email), "E-mail isn't formated correctly."
    end

    it 'validate format of e-mail with correct value' do
      user = User.new
      user.email = 'teste@teste.com'
      user.valid?
      user.errors.should_not have_key(:email), "E-mail is formated corretly and model doesn't have error."
    end

    it 'validates that e-mail should be unique' do
      create(:client)
      user = User.new
      user.email = 'usuario1@usuario.com'
      user.client = Client.first
      user.valid?
      user.errors.should have_key(:email), "E-mail is duplicate."
    end

  end

  context 'validates column password' do

    it 'validates presence of password' do
      user = User.new
      user.valid?
      user.errors.should have_key(:password), "Password isn't present in user."
    end

    it 'validates length of password when has less than 6 characters' do
      user = User.new
      user.password = '"23Aa'
      user.valid?
      user.errors.should have_key(:password), "Password hasn't less than 6 characters."
    end

    it 'validates length of password when has 6 characters' do
      user = User.new
      user.password = '@234Aa'
      user.valid?
      user.errors.should_not have_key(:password), "Password has 6 characters and model doesn't have error."
    end

    it 'validates length of password when has 8 characters' do
      user = User.new
      user.password = '1@3456Aa'
      user.valid?
      user.errors.should_not have_key(:password), "Password has 8 characters and model doesn't have error."
    end

    it 'validates length of password when has more than 8 characters' do
      user = User.new
      user.password = '?234567Aa'
      user.valid?
      user.errors.should have_key(:password), "Password has more than 8 characters."
    end

    it 'validates format of password when it has just numbers' do
      user = User.new
      user.password = '1234567'
      user.valid?
      user.errors.should have_key(:password), "Password has only numbers."
    end

    it 'validates format of password when it has just characters' do
      user = User.new
      user.password = 'abgdef'
      user.valid?
      user.errors.should have_key(:password), "Password has just charcters alphanumeric."
    end

    it 'validates format of password when it has numbers and charcters as lower case' do
      user = User.new
      user.password = '123456a'
      user.valid?
      user.errors.should have_key(:password), "Password has just numbers and character alphanumerics as lower case."
    end

    it 'validates format of password when it has numbers and charcters as lower and upper case' do
      user = User.new
      user.password = '12345aA'
      user.valid?
      user.errors.should have_key(:password), "Password doesn't have special characters."
    end

    it 'validates format of password when its correct' do
      user = User.new
      user.password = '_2?45aA'
      user.valid?
      user.errors.should_not have_key(:password), "Password is in correct format."
    end

    it 'validates that the password confirmation is correct' do
      user = User.new
      user.password = '@1234Aa'
      user.password_confirmation = '@1234Aa'
      user.valid?
      user.errors.should_not have_key(:password_confirmation), "Password confirmation is correct."
    end

    it 'validates when the password confirmation is incorrect' do
      user = User.new
      user.password = '@1234Aa'
      user.password_confirmation = '@1234Ab'
      user.valid?
      user.errors.should have_key(:password_confirmation), "Password confirmation is incorrect."
    end

  end

  context 'validates column full_name' do

    it 'validates presence of full name' do
      user = User.new
      user.valid?
      user.errors.should have_key(:full_name), "Full name isn't present in user." 
    end

    it 'validates when full name has less than 10 characteres' do
      user = User.new
      user.full_name = 'Rodrigo'
      user.valid?
      user.errors.should have_key(:full_name), "Full name has less than 10 characters."
    end

    it 'validates when full name has more than 10 characters' do
      user = User.new
      user.full_name = 'Rodrigo Morais'
      user.valid?
      user.errors.should_not have_key(:full_name), "Full name is correct."
    end

  end

  context 'validates association with client' do

    it 'validates presence of client' do
      user = User.new
      user.valid?
      user.errors.should have_key(:client), "Client isn't associated with user."
    end

  end

end
