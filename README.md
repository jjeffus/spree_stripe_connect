SpreeStripeConnect
==================
 
For use with jjeffus' fork of SpreeMultiTenant (spree_multi_tenant gem updated to work with solidus). 

Allows separate tenants to connect their stripe account with stripe connect, stores their info in a spree_stripe_accounts table and reads from this to send along a destination and application_fee with orders from specific tenant stores so payments can be released directly to these tenants. 

Installation
------------

Add spree_stripe_connect to your Gemfile:

```ruby
gem 'spree_stripe_connect'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_stripe_connect:install
```

Expects:
ENV['stripe_api_key'] to be the platform account secret key 
ENV['stripe_client_id'] to be the platform client id

Also should add the stripe payment gateway with the platform's credentials folling the solidus_gateway guidelines


Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_stripe_connect/factories'
```

Copyright (c) 2016 Melanie Plaza, released under the New BSD License
