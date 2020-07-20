::SassC.load_paths << File.join(root, 'node_modules')

set :css_dir,    'assets/stylesheets'
set :images_dir, 'assets/images'
set :js_dir,     'assets/javascripts'

ignore '*.tmpl.html.slim'

activate :autoprefixer

activate :deploy do |deploy|
  deploy.deploy_method  = :git
  deploy.branch         = 'gh-pages'
  deploy.build_before   = true
  deploy.strategy       = :submodule
end

activate :external_pipeline,
  name: :webpack,
  command: build? ? './node_modules/webpack/bin/webpack.js --bail' : './node_modules/webpack/bin/webpack.js --watch -d',
  source: '.tmp/dist',
  latency: 1

configure :build do
  activate :asset_hash
  activate :gzip
  activate :minify_css
  activate :minify_html, remove_input_attributes: false
  activate :minify_javascript

  # "Ignore" JS so webpack has full control.
  bundles = ['default.bundle', 'presentation.bundle', 'reveal_plugins.bundle']
  ignore { |path| path =~ /\/([^\/]*)\.js$/ && !bundles.include?($1) }
end

data.courses.each do |_code, course|
  proxy "/programs/#{course.link}.html",        "/programs/#{course.link}.tmpl.html"
  proxy "/programs/print/#{course.link}.html",  "/programs/#{course.link}.tmpl.html"
end
