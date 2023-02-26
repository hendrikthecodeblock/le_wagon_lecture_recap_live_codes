require "pry-byebug"

class SlotMachine
  SYMBOLS = %w[cherry seven bell star joker]
  # Ruby Constant

  def initialize(reels = []) # By default reels is an empty array unless you state otherwise
    @reels = reels
  end

  def score
    if three_identical?
      # we have 3 of the same score => varies
      # 1 2 3 4 5
      base_score(@reels[0]) * 10
    elsif two_identical_and_joker?
      base_score(@reels.sort[1]) * 5
      # [joker joker star].sort =>    [joker joker star]
      # [joker star star].sort =>    [joker star star]
      # [cherry cherry star].sort => [cherry cherry star]
      # [cherry star cherry].sort => [cherry cherry star]
      # [star cherry cherry].sort => [cherry cherry star]

    else
      # we have different items: score => 0
      0
    end
  end

  # Allows us to play the slot machine
  def play
    # remove the previous reel
    @reels = []

    # we want to get 3 different symbols for the reels
    3.times do
      # Take a symbol at random and Add it to the reels
      @reels << SYMBOLS.sample
    end

    # We want to return the reels
    @reels
  end


  private

  def three_identical?
    # [joker joker joker]
    # @reels[0] == @reels[1] && @reels[2] == @reels[1]
    @reels.uniq.length == 1
    # [star star star]
    # [joker star bell]
    # [joker star star]
  end

  def two_identical_and_joker?
    # [joker star]
    @reels.uniq.size == 2 && @reels.include?('joker')
  end

  # returns the base value for the symbol
  def base_score(symbol)
    SYMBOLS.index(symbol) + 1
  end
end

binding.pry
puts 'test'
