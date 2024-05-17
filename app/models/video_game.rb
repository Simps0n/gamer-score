# frozen_string_literal: true

# VideoGame model
class VideoGame < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, message: 'must be at least 5 characters long' }
  validates :genre, presence: true
end
