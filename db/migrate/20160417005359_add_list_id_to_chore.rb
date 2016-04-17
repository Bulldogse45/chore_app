class AddListIdToChore < ActiveRecord::Migration
  def change
    add_column :chores, :list_id, :integer
  end
end
