class CreateMktcxes < ActiveRecord::Migration
  def change
    create_table :mktcxes do |t|
      t.string :mkcusuario
      t.string :mkcpass
      t.string :mkcpuerto
      t.string :mkcip

      t.timestamps
    end
  end
end
