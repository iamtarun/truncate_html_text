[![Gem Version](https://badge.fury.io/rb/truncate_html_text.svg)][gem]
[![License](http://img.shields.io/license/MIT.png?color=green)][license]

[gem]: http://badge.fury.io/rb/truncate_html_text
[license]: http://opensource.org/licenses/MIT

# TruncateHtmlText

This gem allows users to truncate html or non-html text by using options.
This gem provides an easy way to integrate `truncate_html_text` jQuery plugin with your Rails apps.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'truncate_html_text'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install truncate_html_text

## Usage

To insert JavaScript files in your Rails app, add following line in your `app/assets/javascripts/application.js` file (make sure to add after requiring `jquery`).

```javascript
	//= require truncate_html_text_main
```


```rails
	<%= truncate_html_text_tag(:div, '<p>Truncate Html <i>text</i></p>')%>
	<div class="truncate"><p>Truncate Html <i>text</i></p></div>
```


## Options

Default options are...

### length

*Default: Infinity*

The maximum length (including the ellipsis) of the truncated html.

```rails
	<%= truncate_html_text_tag(:div, '<p>Truncate Html <i>text</i></p>', data:{length:20})%>
	<div class="truncate" data-length="20"><p>Truncate Html <i>t...</i></p></div>
```

### stripTags

*Default: false*

If `stripTags` is truthy all html tags will be stipped, leaving only the text.

```rails
	<%= truncate_html_text_tag(:div, '<p>Truncate Html <i>text</i></p>', data:{length:20, stripTags: true})%>
	<div class="truncate" data-length="20" data-stripTags="true">Truncate Html t...</div>
```

### words

*Default: false*

If `words` is truthy the input will only be truncated at word boundaries.

```rails
	<%= truncate_html_text_tag(:div, '<p>Truncate Html <i>text</i></p>', data:{length:20, words: true})%>
	<div class="truncate" data-length="20" data-words="true"><p>Truncate Html...</p></div>
```

### noBreaks

*Default: false*

If `noBreaks` is truthy the input will contain no break elements.

```rails
	<%= truncate_html_text_tag(:div, '<p>Truncate Html <br><i>text</i></p>', data:{length:20, noBreaks: true})%>
	<div class="truncate" data-length="20" data-noBreaks="true"><p>Truncate Html <i>t...</i></p></div>
```

### ellipsis

*Default: '…'*

The `ellipsis` setting is used to provide a different character for the ellipsis.

```rails
	<%= truncate_html_text_tag(:div, '<p>Truncate Html <br><i>text</i></p>', data:{length:20, ellipsis: '~'})%>
	<div class="truncate" data-length="20" data-ellipsis="true"><p>Truncate Html <i>t~</i></p></div>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/truncate_html_text/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
