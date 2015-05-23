activate :bower
activate :livereload

set :js_dir,     'assets/javascripts'
set :css_dir,    'assets/stylesheets'
set :images_dir, 'assets/images'

ignore '*.tmpl.html.slim'

activate :deploy do |deploy|
  deploy.method       = :git
  deploy.branch       = 'gh-pages'
  deploy.build_before = false # always use --no-clean options
  deploy.strategy     = :submodule
end

configure :build do
  compass_config do |config|
    config.sass_options = { debug_info:     false }
    config.sass_options = { line_comments:  false }
  end

  activate :minify_html, remove_input_attributes: false
  activate :minify_css
  activate :minify_javascript
  activate :gzip
end

data.courses.each do |_code, course|
  proxy "/programs/#{course.link}.html",        "/programs/#{course.link}.tmpl.html"
  proxy "/programs/print/#{course.link}.html",  "/programs/#{course.link}.tmpl.html"
end
