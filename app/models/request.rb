class Request < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :status, presence: true

  def pending?
    status == 'pending'
  end

  def accepted?
    status == 'accepted'
  end

  def rejected?
    status == 'rejected'
  end

  def accepted!
    update(status: 'accepted')
  end

  def rejected!
    update(status: 'rejected')
  end
end
