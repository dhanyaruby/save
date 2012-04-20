class Participant < ActiveRecord::Base

  validates_presence_of :first_name, :last_name, :village_id, :address_line_1, :pin_code, :status

end
