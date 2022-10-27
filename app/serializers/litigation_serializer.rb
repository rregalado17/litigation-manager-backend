class LitigationSerializer < ActiveModel::Serializer
  attributes :id, :caption, :court, :judge, :opposing_party, :status, :costs, :complaint_date, :legal_areas, :governing_law, :industry, :claims, :counterclaims

  belongs_to :lawyer

end