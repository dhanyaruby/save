class TraineeBatch
  include ActiveModel
  extend ActiveModel::Naming

  attr_reader :errors

  def initialize(participants, training_calendar)
    @participants         = participants
    @training_calendar_id = training_calendar
    @errors               = ActiveModel::Errors.new(self)
    @faulty_participants = []
  end

  def save
    result               = true
    @participants.each do |participant|
      trainee = Trainee.new({:participant_id => participant, :training_calendar_id => @training_calendar_id})
      unless trainee.save
        @faulty_participants << participant
      end
    end
    result
  end


end