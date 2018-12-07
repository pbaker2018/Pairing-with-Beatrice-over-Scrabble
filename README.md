# Pairing over Scrabble

## What does it do?
This program takes a word and returns the total points value of each letter in that word.


## Motivation
This was a challenge given on my first day at Makers Academy. We had already written a Scrabble function during our pre-course, but here, we had to put in to a 'class Scrabble', and re-arrange it so it would pass the RSpec test pre-written by Makers.
The aim of this challenge was to:
- get us used to pairing "I paired with Beatrice"
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

## Evaluation
We both found this challenge very difficult as neither of us had used class before, so it took some time to figure out how to amend our working function to fit into a class. It also took a nudge from our coach to help us realise why our tests were not passing, as we hadn't quite understood what the tests were checking for. We got there in the end though!
