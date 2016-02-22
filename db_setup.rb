require 'sqlite3'
require 'active_record'
require 'yaml'
require 'active_support/all'
require 'securerandom'

BasePath = File.dirname(__FILE__)
DATABASE_FILENAME = "#{BasePath}/database.sqlite"
SQLite3::Database.new(DATABASE_FILENAME)
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: DATABASE_FILENAME
)

class Migrations < ActiveRecord::Migration
  def up
    create_table :links do |t|
      t.string :name
      t.text :description
      t.text :url
      t.text :metadata
      t.timestamps null: false
    end
  end
  def down
    loop { (`cp #{DATABASE_FILENAME} #{DATABASE_FILENAME}-#{SecureRandom.urlsafe_base64}.backup`; exit) rescue next }
    puts "backed up database".red_on_black
    sleep 0.5
    drop_table :links
  end
end # Migrations

class Link < ActiveRecord::Base
end
