class Study < ApplicationRecord
  validates :title , length: {minimum: 1, maximum: 20 }
  validates :content, length: {minimum: 1, maximum: 100}
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
