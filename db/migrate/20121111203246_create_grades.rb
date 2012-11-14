class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :month
      t.decimal :value
      t.integer :student_id
      t.integer :course_id
      t.integer :group_id

      t.timestamps
    end
  end
end
