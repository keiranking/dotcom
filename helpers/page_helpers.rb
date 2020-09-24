module PageHelpers
  def abridge_url(url)
    url.gsub(/https?:\/\/(www.)?/, "")
  end

  def array_to_sentence(array = nil)
    return array.push("").join if array.length <= 1
    "#{array[0..-2].join(", ")} and #{array.last}"
  end

  def date_to_s(date)
    Date.parse(date).strftime("%-d&nbsp;%b&nbsp;%Y")
  end

  def date_to_year(date)
    Date.parse(date).strftime("%Y")
  end

  def folder_path(page_path)
    page_path.chomp('.html')
  end

  def hero_image_path(page_path)
    filename = folder_path(page_path).split("/")[-1].concat(".jpg")
    "#{folder_path(page_path)}/#{filename}"
  end

  def image_id_from_path(image_path)
    image_path.split("/")[-1].chomp(".jpg").chomp(".jpeg").chomp(".png").chomp(".gif")
  end

  def mapsify(address)
    "https://www.google.com/maps/place/#{address.gsub(/\s+/, "+")}"
  end

  def pages_by_category(category)
    sitemap.resources.select do |resource|
      resource.data.category.present? and resource.data.category.include?(category)
    end
  end

  def reading_time_in_minutes(text, readable_words_per_minute = 180)
    (text.split.size.to_f/readable_words_per_minute).round()
  end

  def titleize(text)
    text.split(/[-_]/).map { |s| s.capitalize }.join(" ");
  end
end
