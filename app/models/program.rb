class Program < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :sections
end
