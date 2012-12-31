class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.decimal :pg_debe
      t.decimal :pg_haber
      t.string :pg_detalle
      t.date :pg_fecha
      t.integer :pg_user
      t.string :pg_numfact
      t.string :pg_numtar
      t.string :pg_numcheq
      t.integer :pg_idcuota
      t.references :cliente
      t.timestamps
    end
      add_index :pagos, :cliente_id
      # add_foreign_key :pagos, :clientes, :dependent => :restrict

  end
end
