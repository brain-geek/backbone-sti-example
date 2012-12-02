Fabricator(:time_based_winning) do
  date_start { Time.now }
  date_end { Time.now + 7.days }
  availible_hours_start 5
  availible_hours_end 17
  availibility_weekday_mon true
  measure 'hour'
  x 7
end
