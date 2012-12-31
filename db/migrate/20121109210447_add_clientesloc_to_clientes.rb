class AddClienteslocToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :localidad_id, :integer
  end
end
