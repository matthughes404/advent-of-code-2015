total = 0

File.readlines('input.txt').each do |line|
  line.chomp!
  dims = line.split('x').map do |val|
    val = val.to_i
  end

  dims.sort!

  total += (dims[0] + dims[1]) * 2
  total += dims[0] * dims[1] * dims[2]
end

puts total
