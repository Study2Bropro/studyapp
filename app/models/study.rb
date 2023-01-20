class Study < ApplicationRecord
  validates :title , length: {minimum: 1, maximum: 20 }
  validates :content, length: {minimum: 1, maximum: 100}
  validates :start_time, presence: true
end
