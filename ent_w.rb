color = []
word = 'sss'

while word != ''
  puts 'Enter your word'
  word = gets.chomp
  color.push(word)
end

swap = true
size = color.length - 1
while swap
    swap = false
    for i in 0...size
        swap |= color[i] > color[i + 1] 
        color[i], color[i + 1] = color[i + 1], color[i] if color[i] > color [i + 1]
    end
    size -= 1
end
puts color.join(', ')

