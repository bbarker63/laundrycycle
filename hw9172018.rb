def detail(car)
  play car
  sleep 1
end

5.times do
  detail(sample :ambi_piano)
end
