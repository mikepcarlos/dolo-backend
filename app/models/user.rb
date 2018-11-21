class User < ApplicationRecord
  has_secure_password
  # validates :password, length: { minimum: 1, allow_nil: true }
  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :user_tasks
  has_many :tasks, through: :user_tasks
end
