class Course < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name

  def label
    name
  end
end
