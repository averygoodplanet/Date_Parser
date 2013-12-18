class DateParser
  def self.parse(date_string)
    dateHash = Hash.new
    # sample returns
    dateHash["month"] = /\A\d+/.match(date_string).to_s.to_i
    remainder_string = /\A\d+/.match(date_string).post_match.to_s
    dateHash["day"] = /\d+/.match(remainder_string).to_s.to_i
    remainder_string = /\d+/.match(dateHash["day"].to_s).post_match.to_s
    dateHash["year"] = /\d+/.match(remainder_string).to_s.to_i
    dateHash
  end
end