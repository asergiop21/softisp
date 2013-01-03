class AddVelocToPlanes < ActiveRecord::Migration
  def change
    add_column :planes, :pl_velbajada, :string
  end
end
