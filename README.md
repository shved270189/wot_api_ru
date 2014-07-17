WotApi
=======
[![Gem Version](https://badge.fury.io/rb/wot_api_ru.png)](http://badge.fury.io/rb/wot_api_ru)
[![Code Climate](https://codeclimate.com/github/shved270189/wot_api.png)](https://codeclimate.com/github/shved270189/wot_api)
[![Dependency Status](https://gemnasium.com/shved270189/wot_api.svg)](https://gemnasium.com/shved270189/wot_api)

Ruby gem for [Wargaming.net Public API](http://ru.wargaming.net/developers/documentation/guide/getting-started/)

## Getting started

WotApi works with Rails 4.1 onwards. You can add it to your Gemfile with:

```ruby
gem 'wot_api_ru', github: 'shved270189/wot_api' # from GitHub
gem 'wot_api_ru' # from rubygems
```

Run the bundle command to install it.

After you install WotApi and add it to your Gemfile, you need to run the generator:

```console
rails generate wot_api:install
```

The generator will install an initializer. Set your [application id](https://ru.wargaming.net/developers/applications/) in config/initializers/wot_api.rb :

```ruby
# Set your application Wargaming key here!
WotApi::Settings[:application_id] = ENV['WOT_API_APP_ID']
```

After this steps you can create WotApi client and call to Wargaming.net Public API:

```ruby
client = WotApi::Client.new
client.account_list(search: 'saltovka')
```
All API's method you can see on [API dicumentation](http://ru.wargaming.net/developers/api_reference).
If you want call [api.worldoftanks.ru/wot/account/list](http://ru.wargaming.net/developers/api_reference/wot/account/list/) then you can use WotApi::Client#account_list with parameters of API etc.

## License

Copyright (c) 2014 Ivan Bondarenko. See [LICENSE][] for details.

[license]: MIT-LICENSE
