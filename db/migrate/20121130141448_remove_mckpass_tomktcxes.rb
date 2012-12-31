class RemoveMckpassTomktcxes < ActiveRecord::Migration
  def up
  end

  def down
      remove_colum :mktcxes, :mktpass

  end
end
