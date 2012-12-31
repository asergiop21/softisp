class AddCmkMinlimitToClientesmkt < ActiveRecord::Migration
  def change
    add_column :clientesmkts, :cmk_minlimit, :string
  end
end
