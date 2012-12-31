class AddCantTotalToPagos < ActiveRecord::Migration
  def change
    add_column :pagos, :pg_cant, :integer
    add_column :pagos, :pg_totalpago, :decimal, :precision =>8, :scale=>2
  end
end
