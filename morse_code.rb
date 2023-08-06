def decode(morse_code)
  morse_code_library = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
    "------" => "0",
    ".----" => "1",
    "..---" => "2",
    "...--" => "3",
    "....-" => "4",
    "....." => "5",
    "-...." => "6",
    "--..." => "7",
    "---.." => "8",
    "----." => "9",
  }

  morse_code_words = morse_code.split("   ") # Split into words
  decoded_message = []

  morse_code_words.each do |word|
    morse_code_letters = word.split(" ") # Split into letters
    decoded_word = morse_code_letters.map { |morse| morse_code_library[morse] }.join("")
    decoded_message << decoded_word
  end

  puts decoded_message.join(" ")
end

decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
decode("-- -.--   -. .- -- .")
