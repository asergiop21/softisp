class CreateLocalidades < ActiveRecord::Migration
  def change
    create_table :localidades do |t|
      t.string :lc_nombre
      t.string :lc_dpto
      t.string :lc_cp
      t.string :lc_provincia
      t.string :lc_pais

      t.timestamps
    end
  end
end
