class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.string :title
      t.string :user
      t.string :topic
      t.string :label

      t.timestamps
    end
  end
end
