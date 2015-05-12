class User < ActiveRecord::Base

  has_many :bids
  has_many :homes, through: :bids

  # validates :email,
  #           :name,
  #           :number, presence => true
  # 
  # validates_uniqueness_of :email

end
