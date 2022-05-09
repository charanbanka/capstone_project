class RemovePIdFromTask < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :p_id, :decimal
  end
end
