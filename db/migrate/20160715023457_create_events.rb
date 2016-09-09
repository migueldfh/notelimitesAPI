class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events, id: :uuid do |t|
      t.string :eventName
      t.text :description
      t.datetime :init_date
      t.datetime :end_date
      t.decimal :ranking
      t.integer :attendings
      t.integer :micrositeID
      t.uuid :placeID
      t.uuid :accessTypeID
      t.uuid :eventTypeID

      t.timestamps
    end
  end
end
