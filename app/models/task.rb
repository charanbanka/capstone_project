class Task < ApplicationRecord
    belongs_to :phase
    belongs_to :user
    belongs_to :project
    has_many :sub_tasks
    has_many :comments
    has_many :attachments
end
