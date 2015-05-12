class User < ActiveRecord::Base

  has_many :bids
  has_many :homes, through: :bids

end
