class CreateTrainingCalendars < ActiveRecord::Migration

  def up
    create_table :training_calendars do |t|
      t.string :training_center_id
      t.string :course_id
      t.date :start_date
      t.date :end_date
      t.integer :batch_size
      t.timestamps
    end
  end

  def down
    drop_table :training_calendars
  end
end
