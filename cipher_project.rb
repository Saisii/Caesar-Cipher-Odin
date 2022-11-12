## turns the string into an array of corresponding numbers
def chars_to_numbers (chars_array)
    puts "Input is #{chars_array}"
    num_array = []
    chars_array.each do |char|
        char = char.ord
        num_array << char
    end
    num_array
end

## shifts the numbers a value up if they are A-Z or a-z
def shift_numbers (array, shift)
    shifted_array = []
    array.each do |current|
        #only shift with A-Z/a-z characters
        if (current >= 65 && current <= 90) || (current >= 97 && current <= 122)
            shifted_array << current + shift
        else
            shifted_array << current
        end
    end
    shifted_array
end

## converts the shifted letters back to a character
def convert_shifted_to_letter (shifted_array)
    converted_back_to_chars_array = []
    shifted_array.each do |current|
        # makes it loop around after z 
        if (current > 90 && current < 97) || (current > 122) 
            converted_back_to_chars_array << (current - 26).chr 
            puts '#{current} - 26'
        else
            converted_back_to_chars_array << current.chr
        end
    end
    converted_back_to_chars_array
end





def caesar_cipher (string, shift)
    chars_array = (string).chars
    numbers_array = chars_to_numbers(chars_array)
    shifted_numbers = shift_numbers(numbers_array, shift)
    converted_back_to_chars = convert_shifted_to_letter (shifted_numbers)
    converted_back_to_chars.pop
    converted_back_to_chars.join
end



puts "What is your secret phrase?"
p caesar_cipher(gets, 5)





