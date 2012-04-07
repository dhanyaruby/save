class TrainingCenter < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name, :district, :state, :pin_code
end
