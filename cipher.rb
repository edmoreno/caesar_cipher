def caesar_cipher(string, shift_factor)
  array = string.split('')
  new_array = array.map do |element|
    letter_value = element.ord
    if (letter_value.between?(65, 90))
      new_value = letter_value + shift_factor
      if new_value > 90
        new_value = 64 + (new_value - 90)
      end
      new_value = new_value.chr
    elsif (letter_value.between?(97, 122))
      new_value = letter_value + shift_factor
      if new_value > 122
        new_value = 96 + (new_value - 122)
      end
      new_value = new_value.chr
    else
      letter_value.chr
    end 
  end
  new_array.join
end