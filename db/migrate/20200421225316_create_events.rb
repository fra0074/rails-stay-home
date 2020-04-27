class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.string :title
      t.string :user
      t.string :user_link
      t.string :topic
      t.string :label
      t.string :language
      t.string :event_link

      t.timestamps
    end
  end
end
