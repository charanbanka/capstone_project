class AddDetailsToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :select_member, :string
    add_column :tasks, :task_dependency, :string
  end
end
