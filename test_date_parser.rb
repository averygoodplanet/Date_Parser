require_relative 'date_parser'
require 'minitest/autorun'

class TestDateParser < MiniTest::Unit::TestCase

=begin
  start with parsing a normal date format of mm/DD/YY
  into local dateHash as Fixnum under keys month, day, and year
  for 1-2 month or day, and 2 xor 4 digit year
=end

  def test_1_date_parser_has_a_parse_method
    DateParser.parse("12/22/2012")
  end

  def test_2_MMddYYYY_returns_2_digit_month
    assert_equal 12, (DateParser.parse("12/22/2012"))["month"]
  end

  def test_3_MMddYYYY_returns_2_digit_day
    assert_equal 22, (DateParser.parse("12/22/2012"))["day"]
  end

  def test_4_MMddYYYY_returns_4_digit_year
    assert_equal 2012,  (DateParser.parse("12/22/2012"))["year"]
  end

# =begin
#   Next write tests for normal format month/day/year
#   that can handle 1 digit month, 1 digit day, and 2 digit year
# =end

  def test_5_MddYYYY_returns_1_digit_month
    assert_equal 1, (DateParser.parse("1/22/2012"))["month"]
  end

  def test_6_monthDyyyy_returns_1_digit_day
    assert_equal 2, (DateParser.parse("1/2/2012"))["day"]
  end

  def test_7_monthDayYY_returns_2_digit_year
    DateParser.parse("1/2/95")
    assert_equal 95, (DateParser.parse("1/2/95"))["year"]
  end

=begin
  look up standard format for month/day/year with time
  and determine how to start parsing also time starting with hours only
=end
end