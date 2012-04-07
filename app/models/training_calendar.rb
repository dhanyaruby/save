class TrainingCalendar < ActiveRecord::Base
  belongs_to :training_center
  belongs_to :course

end
