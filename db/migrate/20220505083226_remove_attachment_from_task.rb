class RemoveAttachmentFromTask < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tasks, :attachment, null: false
  end
end
