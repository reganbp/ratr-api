# frozen_string_literal: true

class RatingSerializer < ActiveModel::Serializer
  attributes :id, :name, :brewery, :rating, :notes, :user_id
end
