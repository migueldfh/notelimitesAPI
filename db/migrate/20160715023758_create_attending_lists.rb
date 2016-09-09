class CreateAttendingLists < ActiveRecord::Migration[5.0]
  def change
    create_table :attending_lists, id: :uuid do |t|
      t.uuid :userID
      t.uuid :eventID

      t.timestamps
    end
  end
end
