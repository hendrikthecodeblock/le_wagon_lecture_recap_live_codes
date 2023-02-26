require 'pry-byebug'
class SlotMachine
  #Ruby Constant
  SYMBOLS = %w[cherry seven bell star joker]
end

def initialize(reels = []) #By default reels is an empty array unless you state otherwise
  @reels = reels
end

def score
  if three_identical?
    # we have 3 of the same score => varies
    # we have different items: score => 0

    SYMBOLS.index(@reels[0] + 1) * 10
  elsif two_identical_and_joker?
    SYMBOLS.index(@reels.sort[1] + 1) * 5
  else
    0
  end
end

#Allows us to play the slot machine
def play
  #remove previos reels

  @reels = []

  #we want to get 3 different symbols for the reels
  3.times do
    #Take a symbol at random and Add it to the reels
    @reels << SYMBOLS.sample
  end
# We want to display the reels

@reels

end

private

def three_identical?
  @reels.uniq.lengt == 1
  #[joker joker joker]
  #@reels[0] == @reels[1] && @reels[2] == @reels[1]
  #[joker star bell]
  # [joker star star]

  def two_identical_and_joker?
    @reels.uniq.length == 2 && @reels.include?("joker")
  end
end
