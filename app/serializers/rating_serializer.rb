class RatingSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :notes
end
