# receive input as a string, character shift amount as num

# encoded_string = ""

# method shift_char(letter, shift)
  # checks ASCII value of character
  # if between a-z values, shifts left and wraps to z
  # if between A-Z values, shifts left and wraps to Z
  # if neither of above are true, returns letter unmodified
  # returns new ASCII value

# loop through input string
  # temp.push(shift_char(input, shift_amount))

# return encoded_string

# https://www.rubyguides.com/2015/03/caesar-cipher-in-ruby/


puts "Input a string to encode"
to_encode = gets.chomp
puts "Input the amount to shift letters (no more than)"
shift_num = gets.chomp.to_i

# A-Z = 65-90
# a-z = 97-122

# take in a letter, convert to ascii, shift and wrap if applicable
def shift_char(letter, shift)
  ascii_letter = letter.ord
  shifted_ascii = 0 # can't do Integer.new

  if ascii_letter >= 65 && ascii_letter <= 90
    shifted_ascii = ascii_letter-shift
    # if we go out of range, subtract high end by the difference
    # btwn low end and current value
    if shifted_ascii < 65
      shifted_ascii = 91-(65-shifted_ascii)
    end
  elsif ascii_letter >= 97 && ascii_letter <= 122
    shifted_ascii = ascii_letter-shift
    if shifted_ascii < 97
      shifted_ascii = 123-(97-shifted_ascii)
    end
  else
    return ascii_letter
  end
    return shifted_ascii
end

shifted_string = []
to_encode.each_char { |char| shifted_string.push(shift_char(char, shift_num).chr) }
puts shifted_string.join('')
