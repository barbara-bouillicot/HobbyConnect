class SelectedHobby < ApplicationRecord
  belongs_to :user
  belongs_to :hobby

end
