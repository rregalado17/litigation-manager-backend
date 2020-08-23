class Litigation < ApplicationRecord
    belongs_to :lawyer
    validates :caption, presence: true
    validates_inclusion_of :status, :in => ['Active', 'Concluded']
end
