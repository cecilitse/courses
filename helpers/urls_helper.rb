module UrlsHelper
  def host_url(url)
    URI.join("http://#{data.settings.host}", url)
  end
end
