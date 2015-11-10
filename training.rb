def english_number number
  if number < 0
    return 'Enter positive number'
  end
  if number == 0
    return 'zero'
  end
  
  numstring = ''
  
  
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  left = number
  write = left/1000
  left = left - write/1000
  
  if write > 0
    thousands = english_number write
    numstring = numstring + thousands + ' thousands'
    if left > 0
      numstring = numstring + ' '
    end
  end
  
  write = left/100
  left = left - write*100
  
  if write > 0
    hundreds  = english_number write
    numstring = numstring + hundreds + ' hundred'
    
    if left > 0
      numstring = numstring + ' '
    end
  end
  
  write = left/10
  left = left - write*10
  
  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else 
      numstring = numstring + tensPlace[write-1]
    end
    
    if left > 0
      numstring = numstring + '-'
    end
  end
  
  write = left
  left = 0
  
  if write > 0
    numstring = numstring + onesPlace[write-1]
  end
  
  numstring
end

puts english_number (5576)