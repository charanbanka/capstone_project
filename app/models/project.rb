class Project < ApplicationRecord
    belongs_to :user
    belongs_to :phase
    has_many :tasks
end
