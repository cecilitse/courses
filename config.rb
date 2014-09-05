activate :bower

set :css_dir,     'stylesheets'
set :images_dir,  'images'
set :js_dir,      'javascripts'

ignore '*.tmpl.html.slim'

configure :build do
  compass_config do |config|
    config.sass_options = { debug_info:     false }
    config.sass_options = { line_comments:  false }
  end
end

data.courses.each do |_code, course|
  proxy "/programs/#{course.link}.html",        "/programs/#{course.link}.tmpl.html"
  proxy "/programs/print/#{course.link}.html",  "/programs/#{course.link}.tmpl.html"
end
