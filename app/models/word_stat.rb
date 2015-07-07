class WordStat
  # attr_accessor writes our getters and setters for us, under the hood
  attr_accessor(:text, :special_word)

  def initialize(text, special_word)
    @text = text
    @special_word = special_word
  end

  def word_count
    return text.split.length
  end

  def character_count_with_spaces
    return text.length
  end

  def character_count_without_spaces
    text.gsub(" ",'').length
  end

  def occurences
    sanitized_text = text.downcase
    sanitized_word = special_word.downcase
    return sanitized_text.split.count(sanitized_word)
  end
end
