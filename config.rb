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
  activate :favicon_maker do |f|
    f.template_dir  = File.join(root, 'source/assets/images/')
    f.output_dir    = File.join(root, 'build')
    f.icons = {
      'favicon_base.png' => [
        { icon: 'chrome-touch-icon-192x192.png' },
        { icon: 'apple-touch-icon.png', size: '152x152' },
        { icon: 'ms-touch-icon-144x144-precomposed.png', size: '144x144' },
        { icon: 'favicon-196x196.png' },
        { icon: 'favicon-160x160.png' },
        { icon: 'favicon-96x96.png' },
        { icon: 'favicon-32x32.png' },
        { icon: 'favicon-16x16.png' },
        { icon: 'favicon.ico', size: '64x64,32x32,24x24,16x16' },
      ]
    }
  end

  activate :gzip
  activate :minify_css
  activate :minify_html, remove_input_attributes: false
  activate :minify_javascript
end

data.courses.each do |_code, course|
  proxy "/programs/#{course.link}.html",        "/programs/#{course.link}.tmpl.html"
  proxy "/programs/print/#{course.link}.html",  "/programs/#{course.link}.tmpl.html"
end
