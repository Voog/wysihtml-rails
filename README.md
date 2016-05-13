# wysihtml for Rails

[Voog/wysihtml](https://github.com/Voog/wysihtml) is an extended and less strict approach on [xing/wysihtml5](http://xing.github.io/wysihtml5/) open source rich text editor based on HTML5 technology.

This gem adds wysihtml to Rails assets pipeline.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wysihtml-rails'
```

Or you can install from latest build:

```ruby
gem 'wysihtml-rails', :git => 'https://github.com/Voog/wysihtml-rails.git'
```

And then execute:

```sh
bundle
```

Or install it yourself as:

```sh
$ gem install wysihtml-rails
```

## Usage

Require it in your JS manifest's file `application.js`:

```js
//= require wysihtml
```

or if you also need toolbar, table editing features or all commands:

```js
//= require wysihtml
//= require wysihtml/toolbar
//= require wysihtml/all_commands
//= require wysihtml/table_editing
```

Additionally include predefined `simple`, `advanced` or `advanced_unwrap` parsing rules in your `application.js`:

```js
//= require wysihtml/parser_rules/advanced_unwrap
```

Additionally include predefined `wysihtml` stiles in your `application.css.scss` file:

```scss
*= require wysihtml
```

The simple initialise:

```html
<script>
   var editor = new wysihtml.Editor("wysihtml-textarea", { // id of textarea element
      toolbar:      "wysihtml-toolbar", // id of toolbar element
      stylesheets:  "<%= stylesheet_path('wysihtml') %>", // optional, css to style the editor's content
      parserRules:  wysihtmlParserRules, // defined in parser rules set
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
