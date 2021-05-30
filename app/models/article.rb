class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, uniqueness: true
end
