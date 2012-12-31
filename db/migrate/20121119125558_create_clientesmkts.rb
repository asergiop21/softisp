class CreateClientesmkts < ActiveRecord::Migration
  def change
    create_table :clientesmkts do |t|
      t.string :cmk_targetaddr
      t.string :cmk_interface
      t.string :cmk_parent
      t.string :cmk_packetmarks
      t.string :cmk_direction
      t.integer :cmk_priority
      t.string :cmk_queue
      t.string :cmk_limitat
      t.string :cmk_maxlimit
      t.string :cmk_burstlimit
      t.string :cmk_burstthreshold
      t.string :cmk_burttime
      t.string :cmk_totalqueue
      t.references :cliente
      t.timestamps
    end
    
    add_index :clientesmkts, :cliente_id

  end
end
