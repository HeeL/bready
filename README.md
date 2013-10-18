Bready is a tool for building breadcrumbs

Install
-----------
In console: 
```
gem install bready
```
or in your Gemfile:
```
gem 'bready'
```


Configure
-----------
It can work with or without Rails. Here is an example of usage when you want to use it with the Ruby on Rails framework.
First you need to create a configuration file config/initializers/bready.rb

```ruby
Bready::Breadcrumbs.setup do |config|
  # delimiter between parts of breadcrumbs
  config.delimiter = ' | '
  
  # Root chunk that will be used as a first chunk always
  config.root_chunk = ['Home', '/']
  
  # the name of the tag that wraps breadcrumbs
  config.block_tag = 'div'

  # set the class for tag that was described above
  config.block_class = 'breadcrumbs'
end

```


Usage
-----------
You can pass an array of breadcrumb chunks into initializer method like this:

```ruby
bready = Bready::Breadcrumbs.new([
  ['Categories', '/Categories/'],
  ['Products', '/Products/'],
])

```

You can add more chunks later on. Here are examples of how to do it:

```ruby
bready.add_chunk(['Products', '/Products/'])

```

To add more than one chunk:

```ruby
bready.add_chunks([['Products', '/Products/'], ['Products2', '/Products2/']])

```


In the view you can render breadcrumbs by simply calling render method of an instance:

```ruby
bready.render

```
