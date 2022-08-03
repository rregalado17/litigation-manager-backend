class LawyerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :retainer, :profile
  has_many :litigations
end
