class AddCmkBurstlimitToClientesmkt < ActiveRecord::Migration
  def change
    add_column :clientesmkts, :cmk_minburstlimit, :string
    add_column :clientesmkts, :cmk_minbursttheshold, :string
  end
end
