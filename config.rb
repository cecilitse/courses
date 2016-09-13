activate :bower
activate :livereload

activate :google_analytics do |ga|
  ga.tracking_id = data.settings.site.analytics_id
  ga.anonymize_ip = true
  ga.debug = false
  ga.development = false
  ga.minify = true
end

set :css_dir,    'assets/stylesheets'
set :images_dir, 'assets/images'
set :js_dir,     'assets/javascripts'

ignore '*.tmpl.html.slim'

activate :deploy do |deploy|
  deploy.method       = :git
  deploy.branch       = 'gh-pages'
  deploy.build_before = true # always use --no-clean options
end

configure :build do

  activate :gzip
  activate :minify_css
  activate :minify_html, remove_input_attributes: false
  activate :minify_javascript

end

data.courses.each do |_code, course|
  proxy "/programs/#{course.link}.html",        "/programs/#{course.link}.tmpl.html"
  proxy "/programs/print/#{course.link}.html",  "/programs/#{course.link}.tmpl.html"
end
