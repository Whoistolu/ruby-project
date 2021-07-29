
def caesar_cipher(str, shift=2)
    alphabeth = ("a".."z").t_a
    caesar = ""

    str.each_char do |letter|
        if letter == " "
            caesar += " "
        else
            old_idx = alphabeth.find_index(letter)
            new_idx = ( old_idx + shift ) % alphabeth.count
            caesar += alphabeth[new_idx]
        end
    end

    caesar
end 