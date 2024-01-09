chars = File.read('input.txt').chars

floor = 0
chars.each do |c|
  if c == "("
    floor += 1
  elsif c == ")"
    floor -= 1
  end
end

puts floor
