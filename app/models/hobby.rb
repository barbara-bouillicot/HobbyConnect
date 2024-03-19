class Hobby < ApplicationRecord
  has_many :users, through: :selected_hobbies
  has_many :selected_hobbies
  has_many :events, dependent: :destroy

  validates :name, presence: true
end
