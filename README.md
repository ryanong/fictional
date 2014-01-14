# Fictional

Simply create fake relational data.

## Installation

Add this line to your application's Gemfile:

    gem 'fictional'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fictional

## Usage

'''ruby
require 'fictional'

Fictional::Person.first_name #=> "John"

person = Fictional.person 
person.first_name #=> "John"
person.email #=> "john.smith@example.com"

person.first_name = "Jane"
person.email #=> "jane.smith@example.com"

person.phone.number #=> "718-631-1111"
person.full_address #=> "31 Beverly Rd, Douglaston, NY 11363, USA"
'''

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
