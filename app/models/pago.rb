class Pago < ActiveRecord::Base

  def self.search (q=nil)

    if q.present?
      self.connection.execute(sanitize_sql([
        "SELECT * FROM pagos JOIN clientes ON pagos.cliente_id = clientes.id WHERE clientes.cl_apellido LIKE ?", q + '%'
      ]))
    else
     self.connection.execute("SELECT distinct (pagos.cliente_id), cl_apellido, cl_nombre, cl_domicilio, cl_telefono, cl_celular FROM pagos JOIN clientes ON pagos.cliente_id = clientes.id")
    end
  end

  attr_accessible  :pg_debe, :pg_detalle, :pg_fecha, :pg_haber, :pg_idcuota, :pg_numcheq, :pg_numfact, :pg_numtar, :pg_user, :pg_cant, :pg_totalpago
 
  #validaciones
  
  validates_date :pg_fecha



  # Relaciones
  belongs_to :cliente

  


end
