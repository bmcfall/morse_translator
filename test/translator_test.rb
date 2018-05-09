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

  def test_translation_from_eng_to_morse_case_sensitive
    translator = Translator.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
  end
end
