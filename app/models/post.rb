class Post < ApplicationRecord
  belongs_to :store
  validates :date,:money,:people, presence: true
  default_scope -> { order(created_at: :desc) }
  has_many :responses
end
