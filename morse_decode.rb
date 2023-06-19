MORSE_TEXT = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_TEXT[char]
end

def decode_word(text)
  text_arr = text.split
  decoded_word = ''
  text_arr.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode(sentence)
  sentence_arr = sentence.split('  ')
  decoded_sentence = ''
  sentence_arr.each do |word|
    decoded_sentence += "#{decode_word(word)} "
  end
  decoded_sentence.strip
end

p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
