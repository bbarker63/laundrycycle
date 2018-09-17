def cook(meat)
  play meat
  sleep 1
end

def bun(spread)
  play spread
  sleep 1
end

def toppings(cheese)
  if cheese > 12
    sample :guit_e_slide, rate: cheese
    sleep 1
  else
    sample :drum_cymbal_pedal, rate: cheese
    sleep 1
    toppings (cheese + 3)
  end
end

def fries?
  1 == [1,2].choose
end

def serve
  sample :drum_cymbal_closed, amp: 3
  sleep 1
end


5.times do
  cook(sample :drum_bass_hard)
  bun(sample :drum_snare_soft)
  toppings(1)
  serve if fries?
end








