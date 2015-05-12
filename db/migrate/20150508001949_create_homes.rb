class CreateHomes < ActiveRecord::Migration
  def change
    create_table  :homes do |t|
      t.text      :street_address
      t.bigint    :zip_code
      t.string    :state
      t.string    :subdivision

      t.boolean   :available
      t.boolean   :bid_status
      t.boolean   :success
      t.float     :price

      t.bigint    :sqft
      t.integer   :bed
      t.integer   :bath
      t.float     :half_bath
      t.integer   :built

      t.integer   :days

      t.float     :buyer_commission

      t.references :handler
      t.timestamps

    end
  end
end
