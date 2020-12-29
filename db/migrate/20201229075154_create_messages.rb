class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :message,                  null: false
      t.datetime :start_time,                  null: false
      t.timestamps
    end
  end
end