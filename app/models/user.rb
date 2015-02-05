class User < ActiveRecord::Base
  #alidates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  #validates :email, :presence => true, :uniqueness => true
  #validates :password, :confirmation => true #password_confirmation attr
  #validates_length_of :password, :in => 6..20, :on => :create
end
