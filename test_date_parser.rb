require_relative 'date_parser'
require 'minitest/autorun'

class TestDateParser < MiniTest::Unit::TestCase
  def test_1_date_parser_has_a_parse_method
    DateParser.parse("12/22/2012")
  end

=begin
  start with parsing a normal date format of mmDDYY
  into local Fixnum variables month, day, and year
  assuming month and day are both 2 digits and year is 4 digits
=end

  def test_2_date_parser_returns_hash
    DateParser.parse("12/22/2012")
    assert_equal Hash, dateHash.class
  end

  def test_3_MMddYYYY_returns_2_digit_month
    DateParser.parse("12/22/2012")
    assert_equal 12, dateHash["month"]
  end

  def test_4_MMddYYYY_returns_2_digit_day
    DateParser.parse("12/22/2012")
    assert_equal 22, dateHash["day"]
  end

  def test_5_MMddYYYY_returns_4_digit_year
    DateParser.parse("12/22/2012")
    assert_equal 2012, dateHash["year"]
  end

=begin
  Next write tests for normal format month/day/year
  that can handle 1 digit month, 1 digit day, and 2 digit year
=end

  def test_6_MddYYYY_returns_1_digit_month
    DateParser.parse("1/22/2012")
    assert_equal 1, dateHash["month"]
  end

  def test_7_monthDyyyy_returns_1_digit_day
    DateParser.parse("1/2/2012")
    assert_equal 2, dateHash["day"]
  end

  def test_8_monthDayYY_returns_2_digit_year
    DateParser.parse("1/2/95")
    assert_equal 95, dateHash["year"]
  end

=begin
  look up standard format for month/day/year with time
  and determine how to start parsing also time starting with hours only
=end
end