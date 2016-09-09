class CreateEventTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :event_types, id: :uuid do |t|
      t.string :eventType

      t.timestamps
    end
  end
end
