activate :bower

set :css_dir,     'stylesheets'
set :images_dir,  'images'
set :js_dir,      'javascripts'

program_filenames = Dir[File.join(File.dirname(__FILE__), 'source/programs/*.tmpl.html.slim')]
program_names     = program_filenames.map { |filename| File.basename(filename, '.tmpl.html.slim') }

program_names.each do |name|
  proxy "/programs/#{name}.html",        "/programs/#{name}.tmpl.html", locals: { media_type: 'screen' }
  proxy "/programs/print/#{name}.html",  "/programs/#{name}.tmpl.html", locals: { media_type: 'print' }
end
