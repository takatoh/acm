# acm

A simple account manager for Windows. This is NOT secure, excuse me ;p.


## Installation

Install it yourself as:

    > gem install acm

## Usage

At first, init database:

    > acm init

The database file is saved as %HOMEDRIVE%%HOMEPATH%/Documents/.accounts, in YAML.

Add account:

    > acm add takatoh.m@gmail.com
    (acm) Key? email
    (acm) Value? takatoh.m@gmail.com
    (acm) Key? password
    (acm) Value? xxxxxxxx
    (acm) Key?                         # Enter to exit.

Then added account to database.

List account(s):

    > acm list
    takatoh.m@gmail.com

Show details:

    > acm show takatoh.m@gmail.com
    Account: takatoh.m@gmail.com
      email: takatoh.m@gmail.com
      password: xxxxxxxx

Update value of key:

    > acm update takatoh.m@gmail.com password yyyyyyyy

    > acm show takatoh.m@gmail.com
    Account: takatoh.m@gmail.com
      email: takatoh.m@gmail.com
      password: xxxxxxxx

Remove key and value:

    > acm remove_key takatoh.m@gmail.com password

    > acm show takatoh.m@gmail.com
    Account: takatoh.m@gmail.com
      email: takatoh.m@gmail.com

And remove account:

    > acm remove_account takatoh.m@gmail.com
    Account: takatoh.m@gmail.com
      email: takatoh.m@gmail.com

      Are you sure?(y/n) y             # Enter 'y' to remove.

    > acm show takatoh.m@gmail.com
    No such account: takatoh.m@gmail.com


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takatoh/acm.

