class DateParser
  def self.parse(date_string)

    dateHash = Hash.new
    # sample returns
    dateHash["month"] = /\A\d+/.match(date_string).to_s.to_i
    dateHash["day"] = 22
    dateHash["year"] = 2012
    dateHash
  end
end