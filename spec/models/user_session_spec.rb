require 'spec_helper'

describe UserSession do

  before do
    @user = User.new
  end

  context 'verify if presence of e-mail and password are validated' do

    before do
      @user_session = UserSession.new(nil, {:email => '', :password => ''})
    end

    it 'validates presence of e-mail when fill in blank' do
      @user_session.valid?
      @user_session.errors.should have_key(:email), "E-mail isn't present in user."
    end

    it 'validates presence of password when fill in blank' do
      @user_session.valid?
      @user_session.errors.should have_key(:password), "Password isn't present in user."
    end

  end

  context 'validates format of e-mail' do

    it 'validates format of e-mail with incorret value' do
      @user_session = UserSession.new(nil, @user, {:email => '233', :password => ''})
      @user_session.valid?
      @user_session.errors.should have_key(:email), "E-mail isn't formated correctly."
    end

    it 'validate format of e-mail with correct value' do
      @user_session = UserSession.new(nil, @user, {:email => 'teste@teste.com', :password => ''})
      @user_session.valid?
      @user_session.errors.should_not have_key(:email), "E-mail is formated corretly and model doesn't have error."
    end

  end

  context 'validates format of password' do

    it 'validates length of password when has less than 6 characters' do
      @user_session = UserSession.new(nil, @user, {:email => '', :password => '23Aa@'})
      @user_session.valid?
      @user_session.errors.should have_key(:password), "Password hasn't less than 6 characters."
    end

    it 'validates length of password when has 6 characters' do
      @user_session = UserSession.new(nil, @user, {:email => '', :password => '@123Aa'})
      @user_session.valid?
      @user_session.errors.should_not have_key(:password), "Password has 6 characters and model doesn't have error."
    end

    it 'validates length of password when has 8 characters' do
    @user_session = UserSession.new(nil, @user, {:email => '', :password => '1A2@a3b5'})
    @user_session.valid?
    @user_session.errors.should_not have_key(:password), "Password has 8 characters and model doesn't have error."
  end

    it 'validates length of password when has more than 8 characters' do
      @user_session = UserSession.new(nil, @user, {:email => '', :password => '?234567Aa'})
      @user_session.valid?
      @user_session.errors.should have_key(:password), "Password has more than 8 characters."
    end

    it 'validates format of password when it has just numbers' do
      @user_session = UserSession.new(nil, @user, {:email => '', :password => '1234543'})
      @user_session.valid?
      @user_session.errors.should have_key(:password), "Password has only numbers."
    end

    it 'validates format of password when it has just characters' do
      @user_session = UserSession.new(nil, @user, {:email => '', :password => 'jfdghAa'})
      @user_session.valid?
      @user_session.errors.should have_key(:password), "Password has just charcters alphanumeric."
    end

    it 'validates format of password when it has numbers and charcters as lower case' do
      @user_session = UserSession.new(nil, @user, {:email => '', :password => '4234567a'})
      @user_session.valid?
      @user_session.errors.should have_key(:password), "Password has just numbers and character alphanumerics as lower case."
    end

    it 'validates format of password when it has numbers and charcters as lower and upper case' do
      @user_session = UserSession.new(nil, @user, {:email => '', :password => '34567Aa'})
      @user_session.valid?
      @user_session.errors.should have_key(:password), "Password doesn't have special characters."
    end

    it 'validates format of password when its correct' do
      @user_session = UserSession.new(nil, @user, {:email => '', :password => '_2?45aA'})
      @user_session.valid?
      @user_session.errors.should_not have_key(:password), "Password is in correct format."
    end

  end

  context 'verify authentication in system' do

    it 'validates authentication when data are incorrect' do
      allow(@user).to receive(:present?).and_return(false)
      @user_session = UserSession.new(nil, @user, {:email => 'bola@brazil.com', :password => '_2?45aA'})
      authenticated = @user_session.authenticate!
      authenticated.should be_false, "Invalid data to autenticate user."
    end

    it 'validates authentication when data are correct' do
      allow(@user).to receive(:present?).and_return(true)
      @user_session = UserSession.new(nil, @user, {:email => 'morais.rm@gmail.com', :password => '@Rmm2014'})
      @user_session.stub(:store).and_return(true)
      authenticated = @user_session.authenticate!
      authenticated.should be_true, "Autentication realized with success."
    end

  end

end
