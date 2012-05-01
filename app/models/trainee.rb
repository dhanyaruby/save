class Trainee < ActiveRecord::Base
  belongs_to :training_calendar
  belongs_to :participant
  
end
