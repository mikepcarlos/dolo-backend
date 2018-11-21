class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :displayname, :img, :bio, :score
  has_many :projects
  has_many :tasks
end
