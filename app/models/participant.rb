class Participant < ActiveRecord::Base

  validates_presence_of :first_name, :last_name, :village_id, :address_line_1, :status, :gender
  validates_numericality_of :pin_code, :age

  belongs_to :village


  def activate_now
    self.status = "Active"
  end

end
