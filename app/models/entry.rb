class Entry < ApplicationRecord
  belongs_to :user
  validates :weight, presence: true
  validates :unit, presence: true
  validates :date, presence: true
end
