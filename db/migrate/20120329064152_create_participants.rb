class CreateParticipants < ActiveRecord::Migration

  def up
    create_table :participants do |t|
      t.name
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
      t.text :comments
      t.timestamps
    end
  end

  def down
    drop_table :participants
  end
end
