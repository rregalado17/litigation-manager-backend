class LitigationSerializer < ActiveModel::Serializer
  attributes :id, :lawyer_id, :caption, :court, :judge, :opposing_party, :status, :costs

  belongs_to :lawyer

end
