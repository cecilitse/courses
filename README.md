# Courses website

Made with [Foundation](http://foundation.zurb.com/), [Middleman](http://middlemanapp.com/) & [courses.cecilitse.org](http://courses.cecilitse.org/)

This project also generates PDF course documents.

## Getting Started

### Dependecies

- Python & [virtualenvs](https://github.com/kennethreitz/python-guide/blob/master/docs/dev/virtualenvs.rst)
- NodeJS

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

Install default `bower_components`:

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

This generates a PDF at the root directory of Courses. Filename is based on the course name.

### Preview

Before generating a course PDF, you can have a preview of the document in a web browser.

Open a web browser and go to `http://localhost:4567/programs/COURSE_NAME.html`. That's it!

### Deployment

Filst time, initialize the submodule:

```sh
$ git submodule init
```

Build the application:

```sh
$ middleman build --no-clean
```

Deploy on GitHub pages:

```sh
$ middleman deploy
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Courses is released under two licenses:
* [GNU/GPL](LICENSE) for sources
* Creative Commons Attribution-ShareAlike License for content
