class Phase < ApplicationRecord
    has_many :projects
    has_many :tasks
end
