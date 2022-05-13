# frozen_string_literal: true

def decode(let)
  @morse_dict = {
    'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', '4' => '....-',
    'g' => '--.', 'k' => '-.-', 'l' => '.-..', 'm' => '--', 'f' => '..-.',
    'n' => '-.', 'o' => '---', 'w' => '.--', '2' => '..---', '3' => '...--',
    'x' => '-..-', 'p' => '.--.', 'q' => '--.-', 'r' => '.-.', 's' => '...',
    't' => '-', 'u' => '..-', 'v' => '...-', 'i' => '..', '1' => '.----',
    'y' => '-.--', 'z' => '--..', ' ' => ' ', '8' => '---..', 'h' => '....',
    '5' => '.....', '6' => '-....', '7' => '--...', 'e' => '.', 'j' => '.---',
    '9' => '----.', '0' => '-----'
  }

  reverse_dict = {}
  morse_dict.each do |key, value|
    reverse_dict[value] = key
  end
  words_list = let.split('   ')
  sentence = ''
  words_list.each_with_index do |word, idx|
    letters_list = word.split(' ')
    letters_list.each do |letter|
      sentence += reverse_dict[letter]
    end
    sentence += ' ' unless idx >= words_list.length - 1
  end
  sentence
end
