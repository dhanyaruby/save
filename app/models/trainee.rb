class Trainee < ActiveRecord::Base
  set_table_name "trainee_batches"
  belongs_to :training_calendar
  belongs_to :participant

  def full_name
    participant.full_name
  end

end
