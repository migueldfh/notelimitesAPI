class CreateEventUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :event_urls, id: :uuid do |t|
      t.string :url
      t.uuid :eventID

      t.timestamps
    end
  end
end
