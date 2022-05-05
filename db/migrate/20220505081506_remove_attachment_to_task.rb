class RemoveAttachmentToTask < ActiveRecord::Migration[7.0]
  def change
    if foreign_key_exists?(:tasks, :attachments)
      remove_foreign_key :tasks, :attachments
    end
  end
end
