class LawyerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :retainer
  has_many :litigations
end
