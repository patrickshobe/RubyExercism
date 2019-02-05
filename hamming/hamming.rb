class Hamming

  def self.compute(first_strand, second_strand)
    hamming = new(first_strand, second_strand)
    hamming.determine_valid_entries
    hamming.compute_hamming
  end

  def initialize(first_strand, second_strand)
    @first = first_strand.chars
    @second = second_strand.chars
  end

  def determine_valid_entries
    raise ArgumentError if @first.length != @second.length
  end

  def compute_hamming
    @first.map.with_index do | value, index |
      if @second[index] != value
        1
      else
        0
      end
    end.sum

  end
end
