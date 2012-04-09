class TrainingCenter < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name, :district, :state, :pin_code

  def label
    name + " in " + district + " district of " + state
  end
end
