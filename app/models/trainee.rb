class Trainee < ActiveRecord::Base
  set_table_name "trainee_batches"
  belongs_to :training_calendar
  belongs_to :participant
  validates_uniqueness_of :participant_id, :scope => :training_calendar_id
  after_create :change_participant_status

  def full_name
    participant.full_name
  end

  def change_participant_status
    participant.assign
  end


end
