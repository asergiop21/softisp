class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cl_apellido
      t.string :cl_nombre
      t.string :cl_barrio
      t.string :cl_domicilio
      t.string :cl_telefono
      t.string :cl_celular
      t.string :cl_celular2
      t.string :cl_email
      t.string :cl_dni
      t.string :cl_observaciones
      t.string :cl_cuit
      t.date :cl_fecnac
      t.string :cl_numcliente
      t.string :cl_referencia
      t.integer :cl_empresa
      t.integer :cl_user
      t.date :cl_fecha
      t.time :cl_time
      t.boolean :cl_elim
      t.string :cl_domdes
      t.string :cl_bardes
      t.string :cl_refdes
      t.integer :cl_idcat
      t.string :cl_cat
      t.integer :cl_user
      t.boolean :cl_precliente

      t.timestamps
    end
  end
end
