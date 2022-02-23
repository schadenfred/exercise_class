class CreateCoreStrengthClassesStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :core_strength_classes_students do |t|
      t.integer :core_strength_class_id
      t.integer :student_id

      t.timestamps
    end
  end
end
