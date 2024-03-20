class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chatrooms_as_asker, class_name: "Chatroom", foreign_key: :asker_id, dependent: :destroy
  has_many :chatrooms_as_receiver, class_name: "Chatroom", foreign_key: :receiver_id, dependent: :destroy
  has_many :selected_hobbies
  has_many :hobbies, through: :selected_hobbies
  has_many :events
  has_one_attached :photo

  validates :username, :birthdate, :location, :bio, presence: true
  validates :username, uniqueness: true
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

  private

  def validate_age
    if birthdate.present? && birthdate > 18.years.ago.to_datetime
      errors.add(:birthdate, 'You should be over 18 years old.')
    end
  end
end
