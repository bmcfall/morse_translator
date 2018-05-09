require 'pry'

class Translator

  $translator = File.open("input.txt", r)
  
  def initialize
    @upcase_dictionary = {"A" => ".-",
                          "B" => "-...",
                          "C" => "-.-.",
                          "D" => "-..",
                          "E" => ".",
                          "F" => "..-.",
                          "G" => "--.",
                          "H" => "....",
                          "I" => "..",
                          "J" => ".---",
                          "K" => "-.-",
                          "L" => ".-..",
                          "M" => "--",
                          "N" => "-.",
                          "O" => "---",
                          "P" => ".--.",
                          "Q" => "--.-",
                          "R" => ".-.",
                          "S" => "...",
                          "T" => "-",
                          "U" => "..-",
                          "V" => "...-",
                          "W" => ".--",
                          "X" => "-..-",
                          "Y" => "-.--",
                          "Z" => "--.."}

    @dictionary = {"a" => ".-",
                   "b" => "-...",
                   "c" => "-.-.",
                   "d" => "-..",
                   "e" => ".",
                   "f" => "..-.",
                   "g" => "--.",
                   "h" => "....",
                   "i" => "..",
                   "j" => ".---",
                   "k" => "-.-",
                   "l" => ".-..",
                   "m" => "--",
                   "n" => "-.",
                   "o" => "---",
                   "p" => ".--.",
                   "q" => "--.-",
                   "r" => ".-.",
                   "s" => "...",
                   "t" => "-",
                   "u" => "..-",
                   "v" => "...-",
                   "w" => ".--",
                   "x" => "-..-",
                   "y" => "-.--",
                   "z" => "--..",
                   "1" => ".----",
                   "2" => "..---",
                   "3" => "...--",
                   "4" => "....-",
                   "5" => ".....",
                   "6" => "-....",
                   "7" => "--...",
                   "8" => "---..",
                   "9" => "----.",
                   "0" => "-----",
                   " " => " "}
  end

  def eng_to_morse(english_words)
    english_words = english_words.split(" ")

    english_words.each do |word|
      word.downcase
      word.split("").each do |letter|
        a = @dictionary[letter].to_s
        word.gsub! letter, a
      end
    end
    english_words.join(" ")
  end

  def eng_to_morse_upcase(english_words)
    english_words = english_words.split(" ")

    english_words.each do |word|
      word.split("").each do |letter|
        a = @dictionary[letter].to_s
        if letter.capitalize
          b = @upcase_dictionary[letter].to_s
          a = a + b
        end
        word.gsub! letter, a
      end
    end
    english_words.join(" ")
  end

end
