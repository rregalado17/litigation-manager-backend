class Lawyer < ApplicationRecord
    has_many :litigations
    validates :first_name, :last_name, presence: true

    # def update_status(litigation)
    #     if litigation.costs <= self.retainer
    #         return


    # end

end
