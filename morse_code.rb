MORSE_KEY = {
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

def decode_char(morse_code)
  MORSE_KEY[morse_code]
end

def decode_word(morse_code)
  word = ''
  morse_code_splited = morse_code.split(/\s/i)
  morse_code_splited.each do |letter|
    word += decode_char(letter)
  end
  word
end

def decode(morse_code)
  decoded = ''
  not_first = false
  morse_code_splited = morse_code.split(/\s\s\s/i)
  morse_code_splited.each do |word|
    if not_first
      decoded += ' '
    else
      not_first = true
    end

    decoded += decode_word(word)
  end
  decoded
end
