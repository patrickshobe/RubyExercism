class Raindrops
  def self.convert(number)
    new.determine_sound(number)

  end

  def determine_sound(number)
    sound = ''
    sound << 'Pling' if number % 3 == 0
    sound << 'Plang' if number % 5 == 0
    sound << 'Plong' if number % 7 == 0
    sound = number.to_s if sound.empty?
    return sound
  end
end
