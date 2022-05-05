class AddTaskToAttachment < ActiveRecord::Migration[7.0]
  def change
    add_reference :attachments, :task, null: false, foreign_key: true
  end
end
