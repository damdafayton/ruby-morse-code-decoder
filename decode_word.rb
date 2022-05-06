def decode_word(let)
  morse_dict = { 'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.', 'f' => '..-.',
                 'g' => '--.', 'k' => '-.-', 'l' => '.-..', 'm' => '--',
                 'n' => '-.', 'o' => '---', 'w' => '.--', '2' => '..---', '3' => '...--',
                 'x' => '-..-', 'p' => '.--.', 'q' => '--.-', 'r' => '.-.', 's' => '...',
                 't' => '-', 'u' => '..-', 'v' => '...-', 'i' => '..', '4' => '....-', 'j' => '.---',
                 'y' => '-.--', 'z' => '--..', ' ' => ' ', '1' => '.----',
                 '5' => '.....', '6' => '-....', '7' => '--...', '8' => '---..',
                 '9' => '----.', '0' => '-----', 'h' => '....' }

  reverse_dict = {}

  morse_dict.each do |key, value|
    reverse_dict[value] = key
  end

  letters_list = let.split

  word = ''

  letters_list.each do |letter|
    word += reverse_dict[letter]
  end

  word
end

print decode_word('.-   -... --- -..-')
