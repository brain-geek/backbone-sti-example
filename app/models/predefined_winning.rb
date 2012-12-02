class PredefinedWinning < Winnings
  validates_presence_of :date_start, :date_end, :availible_hours_start, :availible_hours_end
  validates_numericality_of :availible_hours_start, :availible_hours_end
  validates_inclusion_of :availible_hours_start, :availible_hours_end, :in => 0..24

  validate :at_least_one_weekday_should_be_selected
 
  def at_least_one_weekday_should_be_selected
    valid = false

    [
      :availibility_weekday_fri, :availibility_weekday_mon, :availibility_weekday_sat, :availibility_weekday_sun, :availibility_weekday_thu, :availibility_weekday_tue, :availibility_weekday_wed
    ].each do |day_field|
      valid = true if self.send(day_field)
    end

    unless valid
      errors.add(:availibility_weekday_mon, "should be at least one day selected")
    end
  end  
end
