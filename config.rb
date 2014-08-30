activate :bower

set :css_dir,     'stylesheets'
set :images_dir,  'images'
set :js_dir,      'javascripts'

ignore '*.tmpl.html.slim'

data.courses.each do |_code, course|
  proxy "/programs/#{course.link}.html",        "/programs/#{course.link}.tmpl.html"
  proxy "/programs/print/#{course.link}.html",  "/programs/#{course.link}.tmpl.html"
end
