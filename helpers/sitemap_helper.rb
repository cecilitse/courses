module SitemapHelper
  def sitemap_page_url(page)
    "http://#{data.settings.host}#{page.url}"
  end

  def sitemap_pages
    # keep all non print .html pages
    sitemap.resources.select { |page| page.path =~ /^((?!print\/)[\w|\/|-])+\.html$/ && !page.data.noindex == true }
  end
end
