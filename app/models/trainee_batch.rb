class TraineeBatch
  include ActiveModel

  def initialize(participants, training_calendar)
    @participants = participants
    @training_calendar_id = training_calendar
  end


end