module PageHelpers
  def date_to_s(date)
    Date.parse(date).strftime("%-d&nbsp;%b&nbsp;%Y")
  end

  def titleize(text)
    text.split(/[-_]/).map { |s| s.capitalize }.join(" ");
  end

  def hero_image_path(page_path)
    folder_path = page_path.delete_suffix!('.html')
    filename = folder_path.split("/")[-1].concat(".jpg")
    "#{folder_path}/#{filename}"
  end

  def reading_time_in_minutes(text, readable_words_per_minute = 180)
    (text.split.size.to_f/readable_words_per_minute).round()
  end
end
