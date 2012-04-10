class TrainingCalendar < ActiveRecord::Base
  belongs_to :training_center
  belongs_to :course
  has_one :trainee_batch

  validates_presence_of :training_center_id, :course_id, :batch_size, :start_date, :end_date
  validates_numericality_of :batch_size

  NOT_STARTED = "Not Started"

  def status_message
    parts = status.split(/_/)
    parts.each { |part| part.capitalize! }
    parts.join(" ")
  end
end
