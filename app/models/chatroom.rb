class Chatroom < ApplicationRecord
  belongs_to :asker, class_name: 'User', foreign_key: 'asker_id', required: true
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id', required: true

  has_many :messages, dependent: :destroy

  validates :status, presence: true

    def self.search(query)
    if query.present?
      where("name ILIKE ?", "%#{query}%")
    else
      Chatrooms.all
    end
  end

  def pending?
    status == 'pending'
  end

end
