class Home < ActiveRecord::Base

  # has_and_belongs_to_many :users
  has_many :bids
  has_many :users, through: :bids

  belongs_to :handler

  validates :street_address,
            :zip_code,
            :state,
            :price,
            :built,
            :buyer_commission, presence: true

  validates :sqft, :bed, :bath, :half_bath, :zip_code, :price, :built, numericality: {:greater_than_or_equal_to => 0}
end
