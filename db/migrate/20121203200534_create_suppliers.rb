class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :pv_name
      t.string :pv_address
      t.string :pv_locality
      t.string :pv_province
      t.string :pv_cel
      t.string :pv_cel1
      t.string :pv_phone

      t.timestamps
    end
  end
end
