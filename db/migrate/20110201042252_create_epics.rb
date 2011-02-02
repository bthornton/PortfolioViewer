class CreateEpics < ActiveRecord::Migration
  def self.up
    create_table :epics do |t|
      t.string :UserStory
      t.string :Owner
      t.string :Description

      t.timestamps
    end
  end

  def self.down
    drop_table :epics
  end
end
