# Courses website

http://courses.cecilitse.org/

Made with [Foundation](http://foundation.zurb.com/) & [Middleman](http://middlemanapp.com/)

This project also generates PDF course documents.

## Getting Started

### Requirements

- Python & [pipenv](https://github.com/kennethreitz/python-guide/blob/master/docs/dev/virtualenvs.rst)
- NodeJS & Yarn
- Ruby & Bundler

### Installation

Install WeasyPrint via pipenv:

```sh
$ pipenv install
```

Install required gems:

```sh
$ bundle install
```

Install default yarn packages:

```sh
$ yarn install
```

### Usage

Activate Python virtualenv:

```sh
$ pipenv shell
```

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

```
$ git submodule init
```

Build the application:

```
$ middleman build --no-clean
```

Deploy on GitHub pages:

```
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
* GPL License for sources
* Creative Commons Attribution-ShareAlike License for content
