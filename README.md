A CLI using [ruby-cli-skeleton](https://github.com/maxpleaner/ruby-cli-skeleton)

This one's for saving links.

I decided to disable all my Chrome extensions due to the risk of password stealing.

Now I am not using the "save to pocket" extension which I used all the time.

As an alternative I'm creating a Ruby CLI with a database connection.

To use:

1. `clone`
2. `bundle`
3. run `./cli.rb`
  - type 'help' to list all commands
  - use ActiveRecord queries to interact with the Link table, which has (url, name, description, and metatags columns). All are optional. 
