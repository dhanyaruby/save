class CreateTrainingBatches < ActiveRecord::Migration

  def up
    create_table :training_batches do |t|
      t.string :course
      t.date :start_date
      t.date :end_date
      t.string :status
      t.timestamps
    end
  end

  def down
    drop_table :training_batches
  end
end
