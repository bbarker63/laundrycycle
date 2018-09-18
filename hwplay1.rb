def detail(car)
  play car
  sleep 1
end

def presoak?
  1 == [1,2,3,4].choose
end

def soap
  play sample :ambi_soft_buzz
  sleep 1
end

def rinse(wash)
  play wash
  sleep 1
end

5.times do
  detail(sample :ambi_piano, amp:1)
  soap if presoak?
  rinse(sample :elec_lo_snare, amp:3)
  
end
