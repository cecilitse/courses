module MetaTagsHelper
  def meta_tag_description
    current_page.data.meta_description || data.settings.description
  end

  def meta_tag_image
    host_url(image_path('avatar.png'))
  end

  def meta_tag_page_title
    if current_course?
      [current_page_title, current_page_subtitle, data.settings.name].compact.join(' - ')
    elsif current_page.data.title
      "#{current_page.data.title} - #{data.settings.name}"
    else
      data.settings.name
    end
  end

  def meta_tag_site_name
    data.settings.name
  end

  def meta_tag_title
    current_page.data.page_title || data.settings.name
  end

  def meta_tag_twitter
    "@#{data.settings.twitter}"
  end

  def meta_tag_url
    host_url(current_page.url)
  end
end
