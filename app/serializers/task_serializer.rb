class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :timeleft, :start, :description, :project_id, :user_id
  belongs_to :project
  belongs_to :user
end
