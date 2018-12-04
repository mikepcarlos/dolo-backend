class Project < ApplicationRecord
  has_many :project_tasks
  has_many :tasks, through: :project_tasks
  ## testing
  has_one :user_project
  has_one :user, through: :user_project
end
