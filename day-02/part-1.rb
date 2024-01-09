total = 0

File.readlines('input.txt').each do |line|
  line.chomp!
  dims = line.split('x').map do |val|
    val = val.to_i
  end

  dims.sort!

  total += dims[0] * dims[1] * 3
  total += dims[1] * dims[2] * 2
  total += dims[2] * dims[0] * 2
end

puts total
