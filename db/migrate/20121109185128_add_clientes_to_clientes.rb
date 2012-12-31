class AddClientesToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :cl_ip, :string
  end
end
