def asciiTest(start, shift)
    case start
    when 97..122, 65..90
        value = start + shift
    
        # If the new character is within the ASCII range of a-z or A-Z, assign it.
        if value >= 97 && value <= 122 || value >= 65 && value <= 90
            return value.chr
        end

        # If the new character is less than the ASCII value for a or A, add 26.
        if value < 97 || value < 65
            return (value + 26).chr
        end

        # If the new character is greater than the ACSII value for z or Z, subtract 26.
        if value > 122 || value > 90
            return (value - 26).chr
        end
    else
        return start.chr
    end
end

puts "Please enter a phrase:"
text = gets.chomp.split("")

puts "Please enter a shift:"
shift = gets.chomp.to_i

if shift > 26
    shift = shift % 26
end

if shift < -26
    shift = shift % 26 - 26
end

if shift == 26 || shift == 0
    puts "Shifting by 26 or 0 will not change the characters in the cipher."
    puts "Please ener a different shift:"
    shift = gets.chomp.to_i
end

output = ""

text.each do |character|
    output += asciiTest(character.ord, shift)
end

def asciiTest(value)
    # If the new character is within the ASCII range of a-z or A-Z, assign it.
    if value > 97 && value < 122 || value > 65 && value < 90
        return value.chr
    end

    # If the new character is less than the ASCII value for a or A, add 26.
    if value < 97 && value < 65
        return (value + 26).chr
    end

    # If the new character is greater than the ACSII value for z or Z, subtract 26.
    if value > 122 && value > 90
        return (value - 26).chr
    end    
end

puts "Your cipher is:"
puts output