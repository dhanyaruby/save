class TraineeBatch
  include ActiveModel
  extend ActiveModel::Naming, ActiveModel::Translation

  attr_reader :errors

  def initialize(participants, training_calendar)
    @participants         = participants
    @training_calendar_id = training_calendar
    @errors               = ActiveModel::Errors.new(self)
  end

  def create_trainee(participant, result)
    trainee = Trainee.new({:participant_id => participant, :training_calendar_id => @training_calendar_id})
    result  = trainee.save
    unless result
      trainee.errors.each do |attribute, errors_array|
        errors[attribute] = errors_array
      end
    end
    result
  end

  def save
    result = true
    @participants.each do |participant|
      result = create_trainee(participant, result)
    end
    result
  end


end