class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.string :mc_name
      t.text :mc_observation

      t.timestamps
    end
  end
end
