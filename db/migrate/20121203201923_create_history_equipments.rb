class CreateHistoryEquipments < ActiveRecord::Migration
  def change
    create_table :history_equipments do |t|
      t.integer :he_state
      t.text :he_observation
      t.references :equipment
      t.timestamps
    end

      add_index :history_equipments , :equipment_id
  end
end
