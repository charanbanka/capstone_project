class AddPIdToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :p_id, :integer
  end
end
