class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :survey
  has_many :responses
end
