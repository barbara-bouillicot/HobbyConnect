class Event < ApplicationRecord
  belongs_to :user
  has_one :hobby
  has_many :requests

  validates :name, :date, :description, :location, presence: true
  validates :description, length: { in: 20..100 }

  def self.search(query)
    if query.present?
      where("name ILIKE ?", "%#{query}%")
    else
      @events = Event.all
    end
  end
end
