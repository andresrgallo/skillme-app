class Lesson < ApplicationRecord
  validates :description, presence: true
  validates :content, presence: true
  validates :price, numericality: true
  belongs_to :category
  before_save do |lesson|
    lesson.description = lesson.description.downcase.titleize
  end
end
