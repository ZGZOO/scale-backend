class Entry < ApplicationRecord
  belongs_to :user
  validates :weight, presence: true
  validates :unit, presence: true
  validates :entry_date, presence: true
end
