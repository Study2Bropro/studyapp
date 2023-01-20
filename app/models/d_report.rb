class DReport < ApplicationRecord
  validates :date, presence: true
  validates :title , length: {minimum: 1, maximum: 20 }
  validates :content, length: {minimum: 1, maximum: 100}

end
