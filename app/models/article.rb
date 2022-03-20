class Article < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 6, maximum: 100 }
end

