class Lawyer < ApplicationRecord
    has_many :litigations
    validates :first_name, :last_name, presence: true


end
