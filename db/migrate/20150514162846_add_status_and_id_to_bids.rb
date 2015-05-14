class AddStatusAndIdToBids < ActiveRecord::Migration
  def change
    add_column :bids, :id, :primary_key
    add_column :bids, :status, :boolean
  end
end
