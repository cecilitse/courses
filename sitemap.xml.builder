xml.instruct!
xml.urlset xmlns: 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  sitemap_pages.each do |page|
    xml.url do
      xml.loc         sitemap_page_url(page)
      xml.lastmod     Date.today.to_time.iso8601
      xml.changefreq  page.data.changefreq  || data.sitemap.changefreq
      xml.priority    page.data.priority    || data.sitemap.priority
    end
  end
end
