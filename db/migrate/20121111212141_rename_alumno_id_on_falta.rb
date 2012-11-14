class RenameAlumnoIdOnFalta < ActiveRecord::Migration
  def up
    rename_column :falta, :alumno_id, :student_id
  end

  def down
    rename_column :falta, :student_id, :alumno_id
  end
end
