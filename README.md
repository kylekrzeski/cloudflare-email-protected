# Cloudflare::Email::Protected

The gem makes a possibility to decode Cloudflare `[email protected]` hash.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add cloudflare-email-protected

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install cloudflare-email-protected

## Usage

You can `encode` and `decode` the specific e-mail address or code:

```ruby
# Encode the e-mail address
code = Cloudflare::Email::Protected.encode('username@domain.tld')

# Decode the e-mail address
Cloudflare::Email::Protected.decode('0f7a7c6a7d616e626a4f6b60626e6661217b636b') # username@domain.tld
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cloudflare-email-protected. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/cloudflare-email-protected/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cloudflare::Email::Protected project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/cloudflare-email-protected/blob/master/CODE_OF_CONDUCT.md).
