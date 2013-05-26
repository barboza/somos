# Somos+

Somos+ is an open source plataform to help people that need help to find people that want to help them.


## Development environment

You'll need [RVM](https://rvm.io/) to isolate your development environment.

Make sure you install `Ruby 1.9.3` on your [RVM](https://rvm.io/).

Then just checkout the code, configure dependencies and run the tests:

1. Clone the repository:

 `git clone git://github.com/barboza/somos.git`

2. Enter the repo directory and accept the [RVM](https://rvm.io/):

 `cd somos`

 `yes` if solicited

3. Install [Bundler](http://gembundler.com/) into our [RVM](https://rvm.io/):

 `gem install bundler`

4. Install all dependencies from [Gemspec](http://docs.rubygems.org/read/chapter/20):

 `bundler install`

### Running tests

1. Go to app folder

	`cd somos`

2. Prepare the database
	
	`bundle exec rake db:test:prepare`

3. Run the rspec

	`rspec spec/`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


# License

Licensed under the MIT license (see MIT-LICENSE file)