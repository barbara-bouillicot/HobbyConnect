class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :location, language: :en
  after_validation :geocode, if: :will_save_change_to_location?

  has_many :chatrooms_as_asker, class_name: "Chatroom", foreign_key: :asker_id, dependent: :destroy
  has_many :chatrooms_as_receiver, class_name: "Chatroom", foreign_key: :receiver_id, dependent: :destroy
  has_many :selected_hobbies
  has_many :hobbies, through: :selected_hobbies
  has_many :events
  has_many :requests
  has_one_attached :photo

  validates :username, :birthdate, :location, :bio, presence: true
  validates :username, uniqueness: true, length: { in: 2..10 }
  validates :bio, length: { in: 20..200 }
  validate :validate_age


  def self.search(query)
    if query.present?
      where("username ILIKE ?", "%#{query}%")
    else
      User.all
    end
  end



  def chatrooms
    chatrooms_as_asker + chatrooms_as_receiver
  end

  def location_by_city
    address = self.location.split(",")
    "#{address.first}, #{address.last}"
  end

  def has_request?(event)
    Request.find_by(user: self, event: event)
  end

  def has_pending_request?(event)
    Request.find_by(user: self, event: event)&.pending?
  end

  def has_rejected_request?(event)
    Request.find_by(user: self, event: event)&.rejected?
  end

  def has_accepted_request?(event)
    Request.find_by(user: self, event: event)&.accepted?
  end

  private

  def validate_age
    if birthdate.present? && birthdate > 18.years.ago.to_datetime
      errors.add(:birthdate, 'You should be over 18 years old.')
    end
  end
end
