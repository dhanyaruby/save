class ModifyParticipants < ActiveRecord::Migration

  def up
    add_column "participants", "first_name", "string"
    add_column "participants", "last_name", "string"
    add_column "participants", "village_id", "string"
    add_column "participants", "date_of_birth", "date"
    add_column "participants", "age", "integer"
    add_column "participants", "gender", "string"
    remove_column "participants", "name"
    remove_column "participants", "village"
    remove_column "participants", "district"
    remove_column "participants", "state"
    remove_column "participants", "country"

  end

  def down
    remove_column "participants", "date_of_birth"
    remove_column "participants", "age"
    remove_column "participants", "gender"
    remove_column "participants", "village_id"
    remove_column "participants", "first_name"
    remove_column "participants", "last_name"
    add_column "participants", "name", "string"
    add_column "participants", "district", "string"
    add_column "participants", "village", "string"
    add_column "participants", "state", "string"
    add_column "participants", "country", "string"
  end
end
