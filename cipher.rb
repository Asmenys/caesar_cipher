require 'pry-byebug'

string = gets.chomp.to_s
shiftIndex= gets.chomp.to_i

def caesar_cipher(string,shiftIndex)
    #converts a string into an array
string_array = char_array(string)
    
#convers the array of characters into their respective ordinal values    
ord_array = char_to_ord(string_array)
#shifts the characters by the shiftIndex
shifted_array = caesar_shift(ord_array,shiftIndex)
#this converts the shifted aray back into numbers
caesar_array = ord_to_char(shifted_array)

p caesar_array.join
end

def char_to_ord(array)
    array.map do |character|
        character.to_s.ord
    end
end

def char_array(string)
    string.chars
end
 
def caesar_shift(array,shiftIndex)
    array.map do |ord_char|
        if ord_char+shiftIndex > 122
          ord_char+shiftIndex-122 
        else
        ord_char+shiftIndex
        end
    end
end

def ord_to_char(array)
array.map do |ord_char|
    if ord_char == nil
        ord_char = " "
    else
ord_char.to_i.chr
        end
    end
end

caesar_cipher(string,shiftIndex)
