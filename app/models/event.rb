class Event < ApplicationRecord

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :user
  belongs_to :hobby
  has_many :requests, dependent: :destroy


  validates :name, :date, :description, :location, presence: true
  validates :description, length: { in: 20..100 }

  def self.search(query)
    if query.present?
      where("name ILIKE ?", "%#{query}%")
    else
      @events = Event.all
    end
  end


  def location_by_city
    address = self.location.split(",")
    "#{address.first}, #{address.last}"
  end

end
