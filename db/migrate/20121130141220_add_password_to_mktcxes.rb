class AddPasswordToMktcxes < ActiveRecord::Migration
  def change
    add_column :mktcxes, :password, :string
  end
end
