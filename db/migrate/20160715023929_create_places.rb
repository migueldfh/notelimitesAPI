class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places, id: :uuid do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lng
      t.uuid :cityID

      t.timestamps
    end
  end
end
