class Participant < ActiveRecord::Base

  validates_presence_of :first_name, :last_name, :village_id, :address_line_1, :pin_code, :status

  def activate_now
    self.status = "Active"
  end

end
