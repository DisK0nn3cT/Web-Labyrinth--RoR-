class CreateCrawlers < ActiveRecord::Migration
  def self.up
    create_table :crawlers do |t|
      t.string :useragent
      t.string :ipaddress
      t.string :rdns
      t.integer :hits
      t.timestamp :firstload
      t.timestamp :lastload
      t.timestamp :lastalert

      t.timestamps
    end
  end

  def self.down
    drop_table :crawlers
  end
end
