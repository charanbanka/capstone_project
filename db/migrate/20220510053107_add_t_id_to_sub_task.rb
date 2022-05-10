class AddTIdToSubTask < ActiveRecord::Migration[7.0]
  def change
    add_column :sub_tasks, :t_id, :integer
  end
end
