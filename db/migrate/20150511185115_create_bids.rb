class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids, id: false do |t|

    t.references :user
    t.references :home

    t.float      :value
    t.timestamps
    end
  end
end
