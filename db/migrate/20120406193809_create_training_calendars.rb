class CreateTrainingCalendars < ActiveRecord::Migration
  def change
    create_table :training_calendars do |t|

      t.timestamps
    end
  end
end
