WotApiRu
=======
[![Gem Version](https://badge.fury.io/rb/wot_api_ru.svg)](http://badge.fury.io/rb/wot_api_ru)
[![Code Climate](https://codeclimate.com/github/shved270189/wot_api_ru.png)](https://codeclimate.com/github/shved270189/wot_api_ru)
[![Build Status](https://travis-ci.org/shved270189/wot_api_ru.svg?branch=master)](https://travis-ci.org/shved270189/wot_api_ru)
[![Coverage Status](https://img.shields.io/coveralls/shved270189/wot_api_ru.svg)](https://coveralls.io/r/shved270189/wot_api_ru?branch=master)
[![Inline docs](http://inch-ci.org/github/shved270189/wot_api_ru.svg?branch=master)](http://inch-ci.org/github/shved270189/wot_api_ru)
[![Dependency Status](https://gemnasium.com/shved270189/wot_api_ru.svg)](https://gemnasium.com/shved270189/wot_api_ru)
[![PullReview stats](https://www.pullreview.com/github/shved270189/wot_api_ru/badges/master.svg?)](https://www.pullreview.com/github/shved270189/wot_api_ru/reviews/master)

Ruby gem for [Wargaming.net Public API](http://ru.wargaming.net/developers/documentation/guide/getting-started/)

## Getting started

WotApiRu works with Rails 4.1 onwards. You can add it to your Gemfile with:

```ruby
gem 'wot_api_ru', github: 'shved270189/wot_api_ru' # from GitHub
gem 'wot_api_ru' # from rubygems
```

Run the bundle command to install it.

After you install WotApiRu and add it to your Gemfile, you need to run the generator:

```console
rails generate wot_api_ru:install
```

The generator will install an initializer. Set your [application id](https://ru.wargaming.net/developers/applications/) in config/initializers/wot_api_ru.rb :

```ruby
# Set your application Wargaming key here!
WotApiRu::Settings[:application_id] = ENV['WOT_API_RU_APP_ID']
```

After this steps you can create WotApiRu client and call to Wargaming.net Public API:

```ruby
client = WotApiRu::Client.new
client.account_list(search: 'saltovka')
```
All API's method you can see on [API documentation](http://ru.wargaming.net/developers/api_reference).
If you want call [api.worldoftanks.ru/wot/account/list](http://ru.wargaming.net/developers/api_reference/wot/account/list/) then you can use WotApiRu::Client#account_list with parameters of API etc.

## License

Copyright (c) 2014 Ivan Bondarenko. See [LICENSE][] for details.

[license]: MIT-LICENSE
