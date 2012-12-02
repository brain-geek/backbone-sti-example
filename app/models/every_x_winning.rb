class EveryXWinning < Winnings
  attr_accessible :x

  validates_presence_of :x
  validates_numericality_of :x
end
