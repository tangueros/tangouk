#############
# based on jina.me
#############

require "builder"

Time.zone = "Asia/Singapore"


ignore "proxy/*"

activate :directory_indexes
activate :relative_assets
activate :livereload


#page "/feed.xml",   layout: false
#page "/humans.txt", layout: false
page '/*.xml',     :layout => false
#page '/*.json',    layout: false
page '/*.txt',     :layout => false
#page '/admin/*', :layout => 'admin'



#set :source, "pages"
#set :css_dir,     'stylesheets'
#set :images_dir,  'images'
#set :js_dir,      'javascripts'
#set :layout_dir,  'layouts'
set :css_dir,     'assets/css'
#set :fonts_dir,   'assets/fonts'
set :images_dir,  'assets/img'
set :js_dir,      'assets/js'

set :haml, {    :format => :html5  }

set :markdown,  :tables => true,
                :autolink => true,
                :gh_blockcode => true,
                :fenced_code_blocks => true,
                :with_toc_data => true,
                :smartypants => true

set :markdown_engine, :redcarpet

configure :build do
  set :build_dir, 'docs'
  set :base_url, ""

  #activate :asset_hash, ignore: "/assets/img/"
  #activate :asset_host, :host => '//YOURDOMAIN.cloudfront.net'

  #activate :minify_css
  #activate :minify_html
  #activate :minify_javascript
  #activate :relative_assets

  #compass_config do |config|
  #  config.output_style = :compressed
  #end

  set :relative_links, true
end
