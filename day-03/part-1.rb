directions = File.read('input.txt').chars

dropOffs = [
  [0,0]
]
directions.each do |d|
  currentPos = dropOffs.last()
  currentX = currentPos[0]
  currentY = currentPos[1]

  nextPos = []
  if d == "^"
    nextPos = [currentX, currentY + 1]
  elsif d == "v"
    nextPos = [currentX, currentY - 1]
  elsif d == ">"
    nextPos = [currentX + 1, currentY]
  elsif d == "<"
    nextPos = [currentX - 1, currentY]
  end

  dropOffs.push(nextPos)
end

puts dropOffs.uniq.count
