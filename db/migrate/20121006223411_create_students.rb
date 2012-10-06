class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.date :birthdate
      t.integer :group_id

      t.timestamps
    end
  end
end
