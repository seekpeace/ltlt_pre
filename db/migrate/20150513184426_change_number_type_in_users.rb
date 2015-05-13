class ChangeNumberTypeInUsers < ActiveRecord::Migration
  def change
    change_column :users, :number, :string
  end
end
