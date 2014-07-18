activate :bower

set :css_dir,     'stylesheets'
set :images_dir,  'images'
set :js_dir,      'javascripts'

%w(ruby-advanced).each do |name|
  proxy "/courses/#{name}.html",        "/courses/#{name}.tmpl.html", locals: { media_type: 'screen' }
  proxy "/courses/print/#{name}.html",  "/courses/#{name}.tmpl.html", locals: { media_type: 'print' }
end
