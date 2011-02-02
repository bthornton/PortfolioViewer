class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.string :story
      t.integer :estimatedPoints
      t.string :description
      t.references :epic

      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
