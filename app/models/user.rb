class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  # serialize :roles, Array
end
