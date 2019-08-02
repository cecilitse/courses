# Courses website • [![Netlify Status](https://api.netlify.com/api/v1/badges/4bb12b5a-04f3-47e3-9c34-bf9297035d99/deploy-status)](https://app.netlify.com/sites/courses-flexbox/deploys)

Made with [Foundation](http://foundation.zurb.com/), [Middleman](http://middlemanapp.com/) & [courses.cecilitse.org](http://courses.cecilitse.org/)

This project also generates PDF course documents.

## Getting Started

### Dependecies

- Python & [virtualenvs](https://github.com/kennethreitz/python-guide/blob/master/docs/dev/virtualenvs.rst)
- NodeJS

### Installation

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
$ bundle exec middleman server
```

### Generate a course PDF

Install WeasyPrint:

```sh
$ virtualenv .venv
$ source .env
$ pip install weasyprint
```

Generate a course:

```sh
$ bin/courses generate COURSE_NAME [BASE_URL]
```

This generates a PDF at the root directory of Courses. Filename is based on the course name.

Before generating a course PDF, you can have a preview of the document in a web browser.

Open a web browser and go to `http://localhost:4567/programs/COURSE_NAME.html`. That's it!

### Deployment

Trigger Netlify build

```sh
$ pit push
```

## License

Courses is released under two licenses:
* [GNU/GPL](LICENSE) for sources
* Creative Commons Attribution-ShareAlike License for content
