class CreateCoreStrengthClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :core_strength_classes do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :timezone
      t.string :description
      t.integer :facilitator_id

      t.timestamps
    end
  end
end
