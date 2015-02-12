require 'font-awesome-sass'

compass_config do |config|
  config.add_import_path "bower_components/foundation/scss"
  config.http_path = "/"
  config.css_dir = "stylesheets"
  config.sass_dir = "stylesheets"
  config.images_dir = "images"
  config.javascripts_dir = "javascripts"
  # config.output_style = :compact
  # config.line_comments = false
end

# helpers do
#   def nav_active(page)
#     current_page.path == page ? {:class => "active"} : {}
#   end
# end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# For HTML5BP_Susy
#
# set :css_dir, 'assets/css'
# set :js_dir, 'assets/js'
# set :images_dir, 'assets/img'

# activate :imageoptim

configure :development do
  activate :livereload
end

configure :build do
  # activate :minify_css
  # activate :minify_javascript

  # Create favicon/touch icon set from source/favicon_base.png
  #activate :favicon_maker

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end
