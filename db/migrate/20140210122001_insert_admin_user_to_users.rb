class InsertAdminUserToUsers < ActiveRecord::Migration
  def up
    User.create(:full_name => 'Rodrigo Morais', :email => 'morais.rm@gmail.com', :password => '@Rmm2014', :password_confirmation => '@Rmm2014', :admin => true)
  end

  def down
    User.delete(:email => 'morais.rm@gmail.com')
  end
end
