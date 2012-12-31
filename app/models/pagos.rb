class Pagos < ActiveRecord::Base
  attr_accessible :cliente_id, :pg_debe, :pg_detalle, :pg_fecha, :pg_haber, :pg_idcuota, :pg_numcheq, :pg_numfact, :pg_numtar, :pg_user
end
