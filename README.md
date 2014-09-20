# Viewmd

Viewmd is a command line tool for viewing your Markdown files (for example and most often, README.md) in your local browser before committing to GitHub. Uses GitHub Markup parser, so the result should look very close to what you'd see on Github if you put the file there.

I guess, we all hate checking in the files with bugs. In case of Markdown files like README.md, it's possible to make some little mistake while editing the file (e.g. forget the trailing triple-backticks) and end up with an incorrectly formatted file checked in to the repository. Seeing it only on Github and having to do another little check-in just to fix this little formatting mistakes seens like an intidy process to me. Thus I created this really simple tool to see how the file would look like *before* committing. 

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

## Dependencies

* github-markup
* redcarpet
* launchy

## Contributing

1. Fork it ( https://github.com/[my-github-username]/viewmd/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
