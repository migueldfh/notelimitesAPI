class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities, id: :uuid do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lng
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
