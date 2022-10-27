class LawyerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :retainer, :profile, :position, :practice, :law_school, :email, :phone 
  has_many :litigations
end
