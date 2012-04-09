class TrainingCalendar < ActiveRecord::Base
  belongs_to :training_center
  belongs_to :course

  validates_presence_of :training_center_id, :course_id, :batch_size, :start_date, :end_date
  validates_numericality_of :batch_size
  
end
