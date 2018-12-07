class Scrabble
  def initialize(word)
    @word = word
  end

  def word
    @word
  end

  def score

    points_hash = {
 1 => ["a", "e", "i", "l", "n", "o", "r", "s", "t", "u" ],
 2 => ["d", "g"],
 3 => ["b", "c", "m", "p"],
 4 => ["f", "h", "v", "w", "y"],
 5 => ["k"],
 8 => ["j", "x"],
 10 => ["q", "z"]
}

    if @word.nil? || @word == "" || @word == " " || @word == " \t\n"
      return 0
    else
      @word = @word.downcase
      array = @word.chars
      accumulator = []
      array.each { |element| accumulator << points_hash.each { |key, value|
      break key if value.include? (element) }}
      total = accumulator.reduce(0) { |sum, num| sum + num }
    end
  end
end
