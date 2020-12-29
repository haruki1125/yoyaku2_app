class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name,                  null: false
      t.text :content,                  null: false
      t.datetime :start_time,                  null: false
      t.string        :phone_number,                  null: false
      t.string        :member,                  null: false
      t.timestamps
    end
  end
end
