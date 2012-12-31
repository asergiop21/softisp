class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :eq_mac
      t.integer :eq_state
      t.text :eq_observation
      t.integer :cat_id
      t.string :category
      t.string :eq_node
      t.references :model , :null => false
      t.references :supplier, :null => false
      t.timestamps
    end

      add_index :equipment, :model_id
      add_index :equipment, :supplier_id

  end
end
