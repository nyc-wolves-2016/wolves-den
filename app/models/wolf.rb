class Wolf < ActiveRecord::Base
  validates :name, presence: true
  # Remember to create a migration!
end
