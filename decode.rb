def decode(let)
  morse_dict = { 'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.', 'f' => '..-.',
                 'g' => '--.', 'k' => '-.-', 'l' => '.-..', 'm' => '--', 'n' => '-.', 'o' => '---',
                 'x' => '-..-', 'p' => '.--.', 'q' => '--.-', 'r' => '.-.', 's' => '...', 'w' => '.--',
                 't' => '-', 'u' => '..-', 'v' => '...-', 'i' => '..', '4' => '....-', 'j' => '.---', '3' => '...--',
                 'y' => '-.--', 'z' => '--..', ' ' => ' ', '1' => '.----', '0' => '-----', 'h' => '....',
                 '5' => '.....', '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.', '2' => '..---' }

  reverse_dict = {}
  morse_dict.each do |key, value|
    reverse_dict[value] = key
  end
  words_list = let.split('   ')
  sentence = ''
  words_list.each_with_index do |word, idx|
    letters_list = word.split
    letters_list.each do |letter|
      sentence += reverse_dict[letter]
    end
    sentence += ' ' unless idx >= words_list.length - 1
  end
  sentence
end

