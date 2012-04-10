class CreateTraineeBatches < ActiveRecord::Migration
  def change
    create_table :trainee_batches do |t|
      t.string :training_calendar_id
      t.string :participant_id
      t.timestamps
    end
  end
end
