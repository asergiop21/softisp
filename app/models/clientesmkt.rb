class Clientesmkt < ActiveRecord::Base
  #Librerias
   require 'rubygems'
  #Mikrotik
   require 'mtik'
  #ip
   require 'resolv'

  #Atributos Permitidos
  attr_accessible :cmk_burstlimit, :cmk_burstthreshold, :cmk_burttime, :cmk_direction, :cmk_interface, :cmk_limitat, :cmk_maxlimit, :cmk_packetmarks, :cmk_parent, :cmk_priority, :cmk_queue, :cmk_targetaddr, :cmk_totalqueue, :cliente_id, :cmk_minlimit, :cmk_minburstlimit, :cmk_minbursttheshold

  #Relaciones
  belongs_to :cliente

  #validaciones
  validates :cmk_priority, :inclusion => { :in => 1..8 }, :allow_blank => 'true', :presence => true
  validates :cmk_targetaddr, :presence => true, :uniqueness => true, :format => {:with =>Resolv::IPv4::Regex}
  validates :cmk_minlimit, :cmk_maxlimit, :presence => true

  
  def self.create_mikrotik()

  mkt = Mktcx.all

mkt.each do |s|

@ip = s.mkcip
@user = s.mkcusuario
@pass = s.password

end
    # Connect to the device:
       mt = MTik::Connection.new :host => @ip, :user=> @user, :pass => @pass
    # Be verbose in output
       MTik::verbose = true

    #+++++++++Eliminacion de los clientes en mikrotik
    @users = {}
    mt.get_reply_each('/queue/simple/print') do |r,s|
    @users [s['name']] = {:id => s['.id'] } 
    mt.get_reply_each('/queue/simple/remove', "=.id=#{@users[s['name']][:id]}") 
   end
   #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ##++++++++++Agregar un array de clientes+++++++++++++++++++
    @clientes = Clientesmkt.all 

   @clientes.each do |s|
      mt.get_reply_each(
      "/queue/simple/add",
      "=name=#{s.cliente_id}",
      "=target-addresses=#{s.cmk_targetaddr}",
      "=max-limit=#{s.cmk_maxlimit.to_s + "/" + s.cmk_minlimit.to_s}",
      "=priority=#{s.cmk_priority}",
      )
    end
  end
end
