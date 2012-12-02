class TimeBasedWinning < Winning
  attr_accessible :x, :measure

  validates_presence_of :x
  validates_numericality_of :x

  validates_inclusion_of :measure, :in => %w{hour day week month year}
end
