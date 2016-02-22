# define ActiveRecord models
require_relative("./db_setup.rb")

class LinkSaver
  # make sure this method accepts a hash argument, which is passed from OptionParser
  def initialize(options={})
    # test db connection
    Link.count rescue migrate  
    puts "try 'help'".yellow
  end

  def hello(msg="world")
    # a sample event, call it with hello("to the world.")
    puts "hello  #{msg}"
    return :return_value_of_hello_world
  end

  def migrate
    puts "migrating".green_on_black
    Migrations.migrate(:up)
  end

end
