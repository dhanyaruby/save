class CreateTrainingCenters < ActiveRecord::Migration

  def up
    create_table :training_centers do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :address_line_4
      t.string :village
      t.string :district
      t.string :state
      t.string :country
      t.integer :pin_code
      t.string :status
      t.timestamps
    end
  end

  def down
    drop_table :training_centers
  end
end
