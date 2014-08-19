# Courses

Courses helps you generate course documents.

## Getting Started

### Installation

Install WeasyPrint:

```sh
$ virtualenv .venv
$ source .env
$ pip install weasyprint
```

Install required gems:

```sh
$ bundler install
```

Install default bower components:

```sh
$ bower install
```

### Usage

Start the server:

```sh
$ middleman server
```

Generate a course PDF:

```sh
$ bin/courses generate COURSE_NAME [BASE_URL]
```

This generates a PDF at the root directory of Courses which filename will be based on course name.

## Preview

Before generating a course PDF, you can have a preview of the document in a web browser.

Open a web browser and go to `http://localhost:4567/`. That's it!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Courses is released under two licenses: GPL License for sources and Creative Commons Attribution-ShareAlike License for content.
