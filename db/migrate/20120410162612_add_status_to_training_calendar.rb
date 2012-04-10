class AddStatusToTrainingCalendar < ActiveRecord::Migration

  def up
    add_column "training_calendars", "status", "string"
  end

  def down
    remove_column "training_calendars", "status"
  end
end
