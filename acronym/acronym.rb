class Acronym
  def self.abbreviate(sentence)
    acronym = new
    word_array = acronym.split(sentence)
    acronym.get_first_letters(word_array)
  end

  def split(sentence)
    sentence.split(/[ -]/)
  end

  def get_first_letters(word_array)
    word_array.map do | word |
      word[0].upcase unless word.empty?
    end.join
  end
end
