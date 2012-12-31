class Cliente < ActiveRecord::Base


  attr_accessible :cl_apellido, :cl_bardes, :cl_barrio, :cl_cat, :cl_celular, :cl_celular2, :cl_cuit, :cl_dni, :cl_domdes, :cl_domicilio, :cl_elim, :cl_email, :cl_empresa, :cl_fecha, :cl_fecnac, :cl_idcat, :cl_nombre, :cl_numcliente, :cl_observaciones, :cl_precliente, :cl_refdes, :cl_referencia, :cl_telefono, :cl_time, :cl_user, :cl_user,:cl_ip, :localidad_id

  #Validaciones
  validates :cl_nombre, :cl_apellido, :cl_domicilio, :localidad_id, :cl_dni, :presence =>{:message =>'Debe completar los campos'}
  validates :cl_dni, :length => {:is =>8 }, :numericality =>true

  #Relaciones
  has_many :pagos, :dependent => :destroy
  has_many :clientesmkt, :dependent => :destroy
  has_many :client_equipments, :dependent => :destroy
  

  #Consulta filtrada por apellido
  def self.filtered(lastname)
    where("LOWER(cl_apellido)like ?","#{lastname}%")    
  end

end
