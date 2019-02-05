class Isogram
  def self.isogram?(word)
    new.valid?(word)
  end

  def valid?(word)
    clean_word = strip_specials(word)
    word_array = build_array(clean_word)
    check_word_length(word_array)
  end

  def strip_specials(word)
    word.gsub(/[ -]/, '').downcase
  end

  def build_array(word)
    word.chars
  end

  def check_word_length(word_array)
    word_array.length == word_array.uniq.length
  end
end
