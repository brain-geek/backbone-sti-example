class Winnings < ActiveRecord::Base
  attr_accessible :availibility_weekday_fri, :availibility_weekday_mon, :availibility_weekday_sat, :availibility_weekday_sun, :availibility_weekday_thu, :availibility_weekday_tue, :availibility_weekday_wed, 
                  :availible_hours_end, :availible_hours_start, :date_end, :date_start
end
