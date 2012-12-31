class Mktcx < ActiveRecord::Base

 # attr_accessor :password
  attr_accessible :mkcip, :password, :mkcpuerto, :mkcusuario, :password_confirmation


validates :password, :password_confirmation, :presence=> true
validates_confirmation_of :password, :password_confirmation


end
