class RemoveClientEquipmentsToClient < ActiveRecord::Migration
  def up
    remove_column :client_equipments, :ce_resp_equip
    remove_column :client_equipments, :ce_respswitch
    remove_column :client_equipments, :ce_resptrafo
  end

  def down
    remove_column :client_equipments, :ce_resp_equip
    remove_column :client_equipments, :ce_respswitch
    remove_column :client_equipments, :ce_resptrafo
  end
end
