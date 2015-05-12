class CreateHandlers < ActiveRecord::Migration
  def change
    create_table :handlers do |t|

      t.boolean   :agent_status
      t.string    :handler_name
      t.bigint    :handler_work
      t.bigint    :handler_fax
      t.string    :handler_email

      t.references :home
    end
  end
end
