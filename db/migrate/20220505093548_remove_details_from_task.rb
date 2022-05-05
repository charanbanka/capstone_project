class RemoveDetailsFromTask < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :select_member, :string
    remove_column :tasks, :task_dependency, :string
  end
end
