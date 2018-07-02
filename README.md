# Tailwind CSS Rails

The `tailwindcss` gem helps you to easily install the Tailwind CSS framework by using WebPack and the `webpacker` gem.



## Table of contents

- [Installing the gem](#installing-the-gem)
- [Contributing](#contributing)
- [License](#license)
- [Code of conduct](code-of-conduct)



## Installing the gem

In order to run the install generator from `tailwindcss` you need to add the [webpacker](https://github.com/rails/webpacker) gem, and run the installation setup for it.



#### Installing webpacker

You first need to add this to you `Gemfile`:

```
# Gemfile
gem 'webpacker', '~> 3.5'

# OR if you prefer to use master
gem 'webpacker', git: 'https://github.com/rails/webpacker.git'
yarn add https://github.com/rails/webpacker.git

# OR to try out 4.x pre-release
gem 'webpacker', '>= 4.0.x'
yarn add @rails/webpacker@4.0.0-pre.2
```

Finally, run following to install Webpacker:

```
bundle
bundle exec rails webpacker:install

# OR (on rails version < 5.0)
bundle exec rake webpacker:install
```



**You are now ready to add the tailwindcss gem**



#### Installing Tailwind CSS

You need to include the `tailwindcss` gem inside your `Gemfile`:

```ruby
gem 'tailwindcss'
```

or you can install the latest build:

```ruby
gem 'tailwindcss', git: 'git@github.com:IcaliaLabs/tailwindcss-rails.git'
```

Install the gem by running the bundle command:

```
$ bundle
```

After running the `bundle` command, you can now run the installer.

```console
$ rails g tailwindcss:install
```

This will prepare the application to use tailwind by:

1. Adding tailwind by using `yarn`
2. Create a `javascript/css` directory
3. Init tailwind from the `node_modules`
4. Setup tailwind
5. Configure `.postcssrc.yml` file

If you want to know how this is achieve, you can go [here](https://github.com/IcaliaLabs/tailwindcss-rails/blob/master/lib/generators/tailwindcss/install_generator.rb).

Lastly but not least, you have to add this two lines to your `application` layout in order to compile it.

```
<%= stylesheet_pack_tag    'application' %>
<%= javascript_pack_tag 'application' %>
```

This two lines will compile the assets from the `app/javascript/css` folder.

Don't forget to run the `webpacker` server like so:

```
./bin/webpack-dev-server
```

This will lift a node server that will watch the changes on files and compile them.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/IcaliaLabs/tailwindcss-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Tailwindcss project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tailwindcss/blob/master/CODE_OF_CONDUCT.md).
