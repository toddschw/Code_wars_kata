def evaporator(content, evap_per_day, threshold)
  percentage_left = 100.to_f
  evap_per_day = evap_per_day.to_f
  threshold = threshold.to_f
  remains_per_day = 100.to_f - evap_per_day

  i = 0
  while (percentage_left > threshold)
   percentage_left = percentage_left * (remains_per_day/100.to_f)
   percentage_left
   i += 1
  end
  i
end

p evaporator(10, 10, 10)