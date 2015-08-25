# GIGASECOND ANNIVERSARY
# LANGUAGE: RUBY

# Write a function that will calculate the date that someone will celebrate their 1 gigasecond anniversary.

# Note: A gigasecond is one billion (10**9) seconds.

# The input is three parameters representing someone's birthday.

# As a convenience for celebration planning, the function should also calculate the day of the week and the number of days from today.

# The output should be an array formatted as such: ["YYYY-MM-DD", 'day_of_the_week', days_until]

# Hint: 
# This documentation will be useful: http://ruby-doc.org/stdlib-2.2.1/libdoc/date/rdoc/Date.html	


# Examples:

# gigasecond(1988, 5, 15) # ["2020-01-22", "Wednesday", "1764 days left"]
# gigasecond(2015, 2, 17) # ["2046-10-26", "Friday", "11538 days left"]
require 'date'

def gigasecond(year, month, day)
  #Your Code Here!
  bday = Date.new(year, month, day)
  futureDate = bday + (10**9/60/60/24)

  future = []
  future.push futureDate.strftime("%Y-%m-%d")

  future.push futureDate.strftime("%A")

  remTime = futureDate.jd - DateTime.now.jd
  future.push "#{remTime} Days left"

  return future

end

puts gigasecond(1992, 1, 13)
