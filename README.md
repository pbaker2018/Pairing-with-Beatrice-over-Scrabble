# Pairing over Scrabble

## What does it do?
This program takes a word and returns the total points value of each letter in that word.


## Motivation
This was a challenge to extend our prior knowledge. We had both already written a Scrabble function, but here, we had to put it in to a 'class Scrabble', and re-arrange it so it would pass the pre-written RSpec tests.(note: tests were not written by us)
The aim of this challenge was to:
- get us used to pairing
- introduce us to using Class
- get us used to looking at the spec file, to see what the tests are actually look for.


## Code
Below is our Scrabble class:
```
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

```

