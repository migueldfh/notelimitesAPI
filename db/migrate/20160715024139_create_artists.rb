class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists, id: :uuid do |t|
      t.string :name
      t.integer :hits
      t.uuid   :eventID

      t.timestamps
    end
  end
end
