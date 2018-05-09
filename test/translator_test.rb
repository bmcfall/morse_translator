require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_translation_from_eng_to_morse
    translator = Translator.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_translation_from_eng_to_morse_case_sensitive_1
    translator = Translator.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse_upcase("Hello World")
  end

  def test_translation_from_eng_to_morse_case_sensitive_2
    translator = Translator.new

    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse_upcase("There are 3 ships")
  end
end
