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

def dry(towel)
  if towel == 1
    play sample :drum_bass_soft, rate: towel
    sleep 1
  else
    sample :drum_cymbal_open, rate: towel
    sleep 1
  end
end



5.times do
  detail(sample :ambi_piano, amp:1)
  soap if presoak?
  rinse(sample :elec_lo_snare, amp:3)
  dry([1,2,3,4].choose)
end
