class Bid < ActiveRecord::Base

  belongs_to :home
  belongs_to :user

  # validates :home_id,
  #           :user_id, presence => true
end
