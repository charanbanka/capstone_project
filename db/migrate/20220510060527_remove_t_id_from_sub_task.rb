class RemoveTIdFromSubTask < ActiveRecord::Migration[7.0]
  def change
    remove_column :sub_tasks, :t_id, :integer
  end
end
