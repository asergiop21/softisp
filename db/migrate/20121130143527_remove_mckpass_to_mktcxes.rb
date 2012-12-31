class RemoveMckpassToMktcxes < ActiveRecord::Migration
  def up
    remove_column :mktcxes, :mkcpass
  end

  def down
    add_column :mktcxes, :mkcpass, :string
  end
end
