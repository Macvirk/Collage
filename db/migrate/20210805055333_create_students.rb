class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.integer :rollno
      t.string  :course
      t.boolean :hostel_facility
      t.references :teacher, foreign_key: true
      t.timestamps
    end
  end
end
