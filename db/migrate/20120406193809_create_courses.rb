class CreateCourses < ActiveRecord::Migration

  def up
    create_table :courses do |t|
      t.string :name
      t.integer :duration_in_days
      t.integer :theory_duration
      t.integer :practicals_duration
      t.text :special_instructions
      t.timestamps
    end
  end

  def down
    drop_table :courses
  end
end
