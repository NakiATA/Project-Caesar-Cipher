def caesar_cipher(text, shift)
    for i in 0...text.length do
      char_code = text[i].ord
      
      (a, z) = case char_code
               when 97..122 then [97, 122]   # a-z in lowercase
               when 65..90  then [65, 90]    # A-Z in uppercase
               else next
      end
  
      rotate = shift > 0 ? 26 : -26
  
      char_code += shift
      char_code -= rotate unless char_code.between?(a, z)
  
      text[i] = char_code.chr
    end
  end
  
  message = "Hi! Do you like toads?"
  #shear adjustment
  caesar_cipher(message, 21)
  #text output
  puts message