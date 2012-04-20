class AddVillages < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name
    end
    create_table :districts do |t|
      t.string :name
      t.string :state_id
    end
    create_table :villages do |t|
      t.string :name
      t.string :district_id
    end
  end

  def down
    drop_table :villages
    drop_table :districts
    drop_table :states
  end
end
