# Viewmd

Viewmd is a command line tool for viewing your Markdown files (e.g. README.md) in your local browser. Uses [GitHub dialect](https://help.github.com/articles/github-flavored-markdown) of Markdown, so the result should look very close to what you'd see on Github if you put the file on GitHub.

I guess, we all hate committing files with bugs. In case of Markdown files, like README.md, it's possible to make some little mistake while editing the file (e.g. forget the trailing triple-backticks) and end up with an incorrectly formatted file checked in to your repository. Seeing it only on GitHub already, for example, and having to do another little fix & commit just to fix this little formatting mistake seens like an untidy process to me. Thus I created this really simple command-line tool to see how the file would look like *before* committing. 

It's really simple and doesn't try to catch all errors (e.g. trying to open a non-existent file).

Please note that I tested it on MacOS only. If you use other OS in your development environment, it may not work. It actually uses [Launchy](https://github.com/copiousfreetime/launchy) for opening files, so it will all depend on Launchy's support for your OS.

## Installation

If you prefer managing your tools through your application's Gemfile, add this line there:

```ruby
gem 'viewmd', group: :development, require: false
```

And then execute:

    $ bundle

Or, better yet, as with all generic dev-tools, install the gem yourself environment-wide as:

    $ gem install viewmd

## Usage

    $ viewmd <filename>

## Versioning

Semantic versioning (http://semver.org/spec/v2.0.0.html) is used. 

For a version number MAJOR.MINOR.PATCH, unless MAJOR is 0:

1. MAJOR version is incremented when incompatible API changes are made,
2. MINOR version is incremented when functionality is added in a backwards-compatible manner, 
3. PATCH version is incremented when backwards-compatible bug fixes are made.

Major version "zero" (0.y.z) is for initial development. Anything may change at any time. 
The public API should not be considered stable. 

Some email: ibm@ibm.com
Some link: http://www.ibm.com
Another link: www.ibm.com
Emoji: :-) :) :( ;)

## Dependencies

* [github-markup](https://github.com/github/markup)
* [github-markdown](https://rubygems.org/gems/github-markdown)
* [html-pipeline](https://github.com/jch/html-pipeline)
* [launchy](https://github.com/copiousfreetime/launchy)

## Contributing

1. Fork it ( https://github.com/moonfly/viewmd/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
