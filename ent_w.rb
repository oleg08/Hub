puts 'Enter your word'
color = []
word = gets.chomp
 if word != ''
   color.push(word)
 else
   puts color.sort
 end