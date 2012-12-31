class AddVelocToPlanes < ActiveRecord::Migration
  def change
    add_column :planes, :pl_velbajada, :string
    add_column :planes, :junk, :string
  end
end
