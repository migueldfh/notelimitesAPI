class CreateAccessTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :access_types, id: :uuid do |t|
      t.string :accessType

      t.timestamps
    end
  end
end
