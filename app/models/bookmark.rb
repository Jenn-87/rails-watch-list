class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, presence: true
  validates :movie, uniqueness: { scope: :list_id }
  validates :list, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
end
