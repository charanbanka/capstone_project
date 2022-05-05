class Attachment < ApplicationRecord
    has_many_attached :files

    belongs_to :task
end
