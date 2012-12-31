class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :pl_nombre
      t.decimal :pl_importe, :precision=>8, :scale=>2
      t.string :pl_vel
      t.boolean :pl_elim
      t.integer :pl_user
      t.decimal :pl_recar1, :precision=>5, :scale=>2
      t.decimal :pl_recar2, :precision=>5, :scale=>2

      t.timestamps
    end
  end
end
