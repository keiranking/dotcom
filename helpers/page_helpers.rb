module PageHelpers
  def date_to_s(date)
    Date.parse(date).strftime("%-d&nbsp;%b&nbsp;%Y")
  end

  def highlight_in_gallery?(index)
    index % 18 == 0 || index % 18 == 11
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

  def reading_time_in_minutes(text, readable_words_per_minute = 180)
    (text.split.size.to_f/readable_words_per_minute).round()
  end

  def titleize(text)
    text.split(/[-_]/).map { |s| s.capitalize }.join(" ");
  end
end
