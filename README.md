# acm

A simple account manager. This is NOT secure, excuse me ;p.


## Installation

Install it yourself as:

    > gem install acm

If you are using Windows, please install ffi gem:

    > gem install ffi

## Usage

At first, init database:

    > acm init

The database file is saved as "ENV['ACMDB']" or "ENV['HOME']/.accounts", in YAML.
Set location of database file to environment variable 'ACMDB', if you want.

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

Search account(s):

    > acm search gmail
    takatoh.m@gmail.com

Show details:

    > acm show takatoh.m@gmail.com
    Account: takatoh.m@gmail.com
      email: takatoh.m@gmail.com
      password: ******

In default, value of password is masked. If you see the password, give --pass option.
Or --clip option copies the password to clipboard.

Update value of key:

    > acm update takatoh.m@gmail.com password yyyyyyyy

    > acm show --pass takatoh.m@gmail.com
    Account: takatoh.m@gmail.com
      email: takatoh.m@gmail.com
      password: yyyyyyyy

Remove key and value:

    > acm remove-key takatoh.m@gmail.com password

    > acm show takatoh.m@gmail.com
    Account: takatoh.m@gmail.com
      email: takatoh.m@gmail.com

Rename account:

    > acm rename-account takatoh.m@gmail.com Gmail

    > acm show Gmail
    Account: Gmail
      email: takatoh.m@gmail.com

And remove account:

    > acm remove-account Gmail
    Account: Gmail
      email: takatoh.m@gmail.com

    Are you sure?(y/n) y               # Enter 'y' to remove.

    > acm show Gmail
    No such account: Gmail


## License

MIT License
