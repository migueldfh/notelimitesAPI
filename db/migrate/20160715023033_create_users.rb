class CreateUsers < ActiveRecord::Migration[5.0]
  enable_extension 'uuid-ossp'
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.string :email
      t.decimal :lat
      t.decimal :lng
      t.datetime :date_last_connection
      t.string :password_digest
      t.string :token

      t.timestamps
    end
  end
end
