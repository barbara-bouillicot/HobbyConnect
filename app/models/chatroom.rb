class Chatroom < ApplicationRecord
  belongs_to :asker, class_name: 'User', foreign_key: 'asker_id', required: true
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id', required: true

  has_many :messages

  validates :status, presence: true
end
