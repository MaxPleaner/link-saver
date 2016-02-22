# define ActiveRecord models
require_relative("./db_setup.rb")

class LinkSaver
  def initialize(options={})
    # make sure this method accepts a hash argument, which is passed from OptionParser
    puts "try 'help'".yellow
  end

  def hello(msg="world")
    # a sample event, call it with hello("to the world.")
    puts "hello  #{msg}"
    return :return_value_of_hello_world
  end
end
