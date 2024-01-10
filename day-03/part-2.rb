directions = File.read('input.txt').chars

santaDropOffs = [
  [0,0]
]

roboSantaDropOffs = [
  [0,0]
]

def calculateNextPosition(currentPos, dir)
  currentX = currentPos[0]
  currentY = currentPos[1]

  nextPos = []
  if dir == "^"
    nextPos = [currentX, currentY + 1]
  elsif dir == "v"
    nextPos = [currentX, currentY - 1]
  elsif dir == ">"
    nextPos = [currentX + 1, currentY]
  elsif dir == "<"
    nextPos = [currentX - 1, currentY]
  end

  nextPos
end

i = 0
while i < directions.count do
  dir = directions[i]
  currentPos = Array.new

  if i.even?
    # santa
    currentPos = santaDropOffs.last()
    nextPos = calculateNextPosition(currentPos, dir)
    santaDropOffs.push(nextPos)
  else
    # robo-santa
    currentPos = roboSantaDropOffs.last()
    nextPos = calculateNextPosition(currentPos, dir)
    roboSantaDropOffs.push(nextPos)
  end

  i += 1
end

totalDropOffs = santaDropOffs + roboSantaDropOffs
puts totalDropOffs.uniq.count
