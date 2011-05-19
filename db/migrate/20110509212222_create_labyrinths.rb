class CreateLabyrinths < ActiveRecord::Migration
  def self.up
    create_table :labyrinths do |t|
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :labyrinths
  end
end
