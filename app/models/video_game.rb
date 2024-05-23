# frozen_string_literal: true

# VideoGame model
class VideoGame < ApplicationRecord
  validates :title, presence: true, length: { minimum: 4, message: 'must be at least 4 characters long' }
end
