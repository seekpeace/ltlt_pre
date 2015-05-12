class Home < ActiveRecord::Base

  # has_and_belongs_to_many :users
  has_many :users
  has_many :users, through: :bids

  belongs_to :handler
end
