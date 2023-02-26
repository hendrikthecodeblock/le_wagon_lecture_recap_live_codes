# 1.Create a slot_machine Class
# 2.public instance method #score
# 2b. public instance method #play
# 3.Slot machine has 5 items => Joker, Star, Bell, Seven, Cherry
# 4. 3 reels
# 5.Rules: Three of same - win, Two of same and Joker win, otherwise no win
# 6.Calculat Scores => three of the same and two of the same + joker


# 7.

ITEMS = %w[cherry seven bell star joker]

# 1. Create Class SlotMachine
class SlotMachine
  def initialize(reels = [])
    @reels = reels
  end

# 2. Define Scores if Three of the same/Two of the same or none of the same
def score
  if three_of_the_same?
    base_score(@reels[0]) * 10
  elseif two_of_the_same_joker?
  # cherry, joker,cherry
  # joker, seven, seven
    base_score(@reels.sort[1]) * 5
  else
    0
  end
end

# 2. play method
def play!
  @reels = []

  3.times do
    @reels << ITEMS.sample
  end
  @reels
end

private

# 5. Three of the same
def three_of_the_same?
  @reels.uniq.length == 1
end

# 5. Two of the same
def two_of_the_same_joker?
  #joker, joker, cherry = > joker, cherry
  @reels.uniq.length == 2 && @reels.include?('joker')
end

# 6. Base Score
def base_score(symbol)
  ITEMS.index(symbol) + 1
end


















end
