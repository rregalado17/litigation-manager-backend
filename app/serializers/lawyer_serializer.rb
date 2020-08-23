class LawyerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name
  has_many :litigations
end
