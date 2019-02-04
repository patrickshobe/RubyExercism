class Phrase
  def initialize(word)
    @word = word
    @counts = Hash.new(0)
  end

  def word_count
    count_words
  end

  def split_words
    strip_special_characters.split(/[ ,]/)
  end

  def count_words
    split_words.each do |word|
      @counts[format_word(word)] += 1 unless word.empty?
    end
    return @counts
  end

  def strip_special_characters
    @word.gsub(/[:@^.!%&$]/, '')
  end

  def format_word(word)
    downcased = word.strip.downcase
    downcased.delete_prefix("'").delete_suffix("'")
  end
end
