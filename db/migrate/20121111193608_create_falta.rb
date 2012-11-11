class CreateFalta < ActiveRecord::Migration
  def change
    create_table :falta do |t|
      t.integer :alumno_id
      t.date :fecha

      t.timestamps
    end
  end
end
