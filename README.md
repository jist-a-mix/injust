
![MIT License](https://img.shields.io/badge/rails-5.2.2-green) ![Ruby License](https://img.shields.io/badge/ruby-2.5.1-red)


# Injust

A platform where users can share their injustices and add comments.(Users must be logged in)


## Installation

Install injust

```bash
git clone git@github.com:jist-a-mix/injust.git
cd injust
```
### Check your ruby version and rails version
```bash
ruby -v
rails -v

```
The output should start with something like ``ruby 2.5.1`` and ``rails 5.2.2``

If not, install the right ruby version using rbenv (it could take a while)

### Install dependencies
```bash
bundle install
```

### Initialize database
```bash
rails db:create db:migrate
```

### Serve
```bash
rails s
```

