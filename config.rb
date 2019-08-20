activate :aria_current
activate :autoprefixer
activate :blog do |blog|
  blog.prefix = "articles"
  # blog.sources = "{category}/{title}.html"
  # blog.permalink = "{category}/{title}.html"
  blog.generate_day_pages = false
  blog.generate_month_pages = false
  blog.layout = "article"
end
activate :inline_svg
activate :livereload

set :css_dir, "assets/stylesheets"
set :fonts_dir, "assets/fonts"
set :images_dir, "assets/images"
set :js_dir, "assets/javascripts"
set :markdown,
  autolink: true,
  fenced_code_blocks: true,
  footnotes: true,
  highlight: true,
  smartypants: true,
  strikethrough: true,
  tables: true,
  with_toc_data: true
set :markdown_engine, :redcarpet

page "/content/code/*", :layout => "code"

page "/*.json", layout: false
page "/*.txt", layout: false
page "/*.xml", layout: false

configure :production do
  activate :asset_hash
  activate :gzip
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
end

helpers do
  def content_resources(category_path)
    sitemap.resources.select { |resource| resource.path.start_with?(category_path) }
  end
end
