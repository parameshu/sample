class User < ActiveRecord::Base
 

  
  
  attr_accessor  :password, :conformpwd
  attr_accessible :conformpwd, :email, :name, :password

   validates :password, :presence => true,:length =>{:maximum => 10}
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email, :presence => true,:format => { :with => email_regex}
    validates :name, :presence => true
    validates :conformpwd, :presence => true

   def authenticate(email, password)
    find(:first, :conditions=>["email = ? AND password = ?", email, password])  # login, password are your users table fields..
  end
    
   
end
