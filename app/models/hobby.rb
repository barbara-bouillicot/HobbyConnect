class Hobby < ApplicationRecord
  has_many :users, through: :selected_hobbies
  has_many :selected_hobbies
  has_many :events

  validates :name, presence: true
end
