# wysihtml5x for Rails

[Edicy/wysihtml5x](http://edicy.github.io/wysihtml5/) is an extended and less strict approach on [xing/wysihtml5](http://xing.github.io/wysihtml5/) open source rich text editor based on HTML5 technology.

This gem adds wysihtml5x to Rails assets pipeline.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wysihtml5x-rails'
```

Or you can install from latest build:

```ruby
gem 'wysihtml5x-rails', :git => 'https://github.com/Edicy/wysihtml5x-rails.git'
```

And then execute:

```sh
bundle
```

Or install it yourself as:

```sh
$ gem install wysihtml5x-rails
```

## Usage

Require it in your JS manifest's file `application.js`:

```js
//= require wysihtml5x
```

or if you need pure wysihtml functionality without toolbar:

```js
//= require wysihtml5x-wotools
```

Additionally include predefined `simple`, `advanced` or `advanced_unwrap` parsing rules in your `application.js`:

```js
//= require parser_rules/advanced_unwrap
```

Additionally include predefined `wysihtml5x` stiles in your `application.css.scss` file:

```scss
*= require wysihtml5x
```

The simple initialise:

```html
<script>
   var editor = new wysihtml5.Editor("wysihtml5-textarea", { // id of textarea element
      toolbar:      "wysihtml5-toolbar", // id of toolbar element
      stylesheets:  "<%= stylesheet_path('wysihtml5x') %>", // optional, css to style the editor's content
      parserRules:  wysihtml5ParserRules, // defined in parser rules set
      //showToolbarAfterInit: false
   });
</script>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
