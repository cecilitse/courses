activate :bower

set :css_dir,     'stylesheets'
set :images_dir,  'images'
set :js_dir,      'javascripts'

template_extension  = '.tmpl.html.slim'
program_filenames   = Dir[File.join(File.dirname(__FILE__), "source/programs/*#{template_extension}")]
program_names       = program_filenames.map { |filename| File.basename(filename, template_extension) }

program_names.each do |name|
  proxy "/programs/#{name}.html",        "/programs/#{name}.tmpl.html"
  proxy "/programs/print/#{name}.html",  "/programs/#{name}.tmpl.html"
end
