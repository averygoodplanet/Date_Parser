require_relative 'date_parser'
require 'minitest/autorun'

class TestDateParser < MiniTest::Unit::TestCase
  def test_1_date_parser_has_a_parse_method
    DateParser.parse("12/22/2012")
    puts "Test 1"
  end

=begin
  start with parsing a normal date format of mmDDYY
  into local Fixnum variables month, day, and year
  assuming month and day are both 2 digits and year is 4 digits
=end
  def test_1b_check_passing_back_hash
    assert_equal 12, (DateParser.parse("12/22/2012"))["month"]
    assert_equal 22, (DateParser.parse("12/22/2012"))["day"]
    assert_equal 2012, (DateParser.parse("12/22/2012"))["year"]
    puts "month: " + (DateParser.parse("12/22/2012"))["month"].to_s
    puts "day: " + (DateParser.parse("12/22/2012"))["day"].to_s
    puts "year:" + (DateParser.parse("12/22/2012"))["year"].to_s
  end

  # def test_2_MMddYYYY_returns_2_digit_month
  #   DateParser.parse("12/22/2012")
  #   assert_equal 12, (DateParser.parse("12/22/2012"))["month"]
  #   puts "Test 2"
  #   puts DateParser.parse("12/22/2012")
  #   puts "month" + (DateParser.parse("12/22/2012"))["month"]

  # end

#   def test_3_MMddYYYY_returns_2_digit_day
#     DateParser.parse("12/22/2012")
#     assert_equal 22, dateHash["day"]
#     puts "Test 3"
#   end

#   def test_4_MMddYYYY_returns_4_digit_year
#     DateParser.parse("12/22/2012")
#     assert_equal 2012, dateHash["year"]
#     puts "Test 4"
#   end

# =begin
#   Next write tests for normal format month/day/year
#   that can handle 1 digit month, 1 digit day, and 2 digit year
# =end

#   def test_5_MddYYYY_returns_1_digit_month
#     DateParser.parse("1/22/2012")
#     assert_equal 1, dateHash["month"]
#     puts "Test 5"
#   end

#   def test_6_monthDyyyy_returns_1_digit_day
#     DateParser.parse("1/2/2012")
#     assert_equal 2, dateHash["day"]
#     puts "Test 6"
#   end

#   def test_7_monthDayYY_returns_2_digit_year
#     DateParser.parse("1/2/95")
#     assert_equal 95, dateHash["year"]
#     puts "Test 7"
#   end

=begin
  look up standard format for month/day/year with time
  and determine how to start parsing also time starting with hours only
=end
end