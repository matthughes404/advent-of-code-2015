chars = File.read('input.txt').chars

floor = 0
pos = 1
chars.each do |c|
  if c == "("
    floor += 1
  elsif c == ")"
    floor -= 1
  end

  if floor == -1
    puts pos
    break
  end

  pos +=1
end
