class AddColumToClientEquipments < ActiveRecord::Migration
  def self.up
    
    add_column :client_equipments, :ce_resp_equip, :boolean
    add_column :client_equipments, :ce_respswitch, :boolean
    add_column :client_equipments, :ce_resptrafo, :boolean

  end
  def self.down
    
    add_column :client_equipments, :ce_resp_equip, :boolean
    add_column :client_equipments, :ce_respswitch, :boolean
    add_column :client_equipments, :ce_resptrafo, :boolean

  end

end
