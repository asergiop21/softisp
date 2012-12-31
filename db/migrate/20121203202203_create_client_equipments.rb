class CreateClientEquipments < ActiveRecord::Migration
  def change
    create_table :client_equipments do |t|
      t.integer :ce_state
      t.text :ce_observation
      t.integer :ce_resp_equip
      t.integer :ce_respswitch
      t.integer :ce_resptrafo
      t.integer :ce_linked
      t.references :cliente
      t.references :equipment
      t.timestamps
    end

      add_index :client_equipments, :cliente_id
      add_index :client_equipments, :equipment_id

  end
end
