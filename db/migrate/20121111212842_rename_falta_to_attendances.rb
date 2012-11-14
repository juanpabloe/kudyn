class RenameFaltaToAttendances < ActiveRecord::Migration
  def up
    rename_table :falta, :attendances
  end

  def down
    rename_table :attendances, :falta
  end
end
