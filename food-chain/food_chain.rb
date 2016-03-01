class FoodChain
  @refrain = ""
  @verses = {
    "spider" => ["It wriggled and jiggled and tickled inside her.",
                 "She swallowed the spider to catch the fly."],
    "bird"   => ["How absurd to swallow a bird!",
                 "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her."],
    "cat"    => "Imagine that, to swallow a cat!",
    "dog"    => "What a hog, to swallow a dog!",
    "goat"   => "Just opened her throat and swallowed a goat!",
    "cow"    => "I don't know how she swallowed a cow!"
  }

  def self.song
    fly + @verses.map do |animal, _value|
      if animal == "spider" || animal == "bird"
        verse(animal, @verses[animal].first, @verses[animal].last)
      else
        verse(animal, @verses[animal], outro(animal))
      end
    end.join + horse
  end

  def self.intro(animal)
    "I know an old lady who swallowed a #{animal}."
  end

  def self.outro(animal)
    "She swallowed the #{animal} to catch the #{@verses.keys[@verses.keys.index(animal) - 1]}."
  end

  def self.fly
    @refrain = "I don't know why she swallowed the fly. Perhaps she'll die.\n\n" + @refrain
    intro("fly") + "\n" + @refrain
  end

  def self.verse(animal, catchphrase, refrain)
    @refrain = refrain + "\n" + @refrain
    intro(animal) + "\n" + catchphrase + "\n" + @refrain
  end

  def self.horse
    intro("horse") + "\n" + "She's dead, of course!\n"
  end
end
