class DateParser
  def self.parse(date_string)
    dateHash = Hash.new
    # sample returns
    dateHash["month"] = 12
    dateHash["day"] = 22
    dateHash["year"] = 2012
    dateHash
  end
end