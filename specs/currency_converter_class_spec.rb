require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../currency_converter_class')

class TestConversion < Minitest::Test
  def setup
    @converter = CurrencyConverter.new
  end

  def test_conversion__to_america
    assert_equal(90, @converter.conversion("america", 100))
  end

  def test_conversion__to_uk
    assert_equal(85, @converter.conversion("uk", 100))
  end

  def test_conversion__to_japan
    assert_equal(12209, @converter.conversion("japan", 100))
  end

  def test_conversion__no_country
    assert_nil(@converter.conversion("france", 100))
  end

end
