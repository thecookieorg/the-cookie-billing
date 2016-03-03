class RemoveStripeidFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :stripeid, :string
  end
end
