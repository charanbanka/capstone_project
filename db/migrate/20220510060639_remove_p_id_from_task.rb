class RemovePIdFromTask < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :p_id, :integer
  end
end
