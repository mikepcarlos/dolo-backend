class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :img, :description
  has_many :tasks
  ## testing
  has_one :user
end
