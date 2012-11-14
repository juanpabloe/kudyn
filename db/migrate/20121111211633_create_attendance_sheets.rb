class CreateAttendanceSheets < ActiveRecord::Migration
  def change
    create_table :attendance_sheets do |t|
      t.integer :group_id

      t.timestamps
    end
  end
end
