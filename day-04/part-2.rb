require 'digest'

prefix = 'ckczppom'

i = 1
while 1 > 0
  input = prefix + i.to_s
  hash = Digest::MD5.hexdigest(input)

  if hash.start_with? '000000'
    puts input
    puts hash
    puts i
    break
  end

  i += 1
end
