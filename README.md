# Peek::Git

Take a peek into the ENV vars used by your Rails application.

## Installation

Add this line to your application's Gemfile:

    gem 'peek-env_vars'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install peek-env_Vars

## Usage

Add the following to your `config/initializers/peek.rb`:

```ruby
Peek.into Peek::Views::EnvVars
```

You will need to list the ENV vars you wish to display.

```ruby
# nwo - name with owner - owner/name
Peek.into Peek::Views::EnvVars, :names => %w(RAILS_ENV DB_HOST HOSTNAME)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
