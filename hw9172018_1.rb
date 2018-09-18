def detail(car)
  play car
  sleep 1
end

def presoak?
  1 == [1,2].choose
end

def soap
  play sample :ambi_soft_buzz
  sleep 1
end

5.times do
  detail(sample :ambi_piano, amp:1)
  soap if presoak?
end
