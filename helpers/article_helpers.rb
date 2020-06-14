module ArticleHelpers
  def featured_image_path(article)
    "#{current_article.path.delete_suffix!('.html')}/#{current_article.data.path}"
  end

  def reading_time_in_minutes(text, readable_words_per_minute = 180)
    (text.split.size.to_f/readable_words_per_minute).round()
  end
end
