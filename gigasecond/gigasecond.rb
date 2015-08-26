# GIGASECOND ANNIVERSARY
# LANGUAGE: RUBY

# Write a function that will calculate the date that someone will celebrate their 1 gigasecond anniversary.

# Note: A gigasecond is one billion (10**9) seconds.

# The input is three parameters representing someone's birthday.

# As a convenience for celebration planning, the function should also calculate the day of the week and the number of days from today.

# The output should be an array formatted as such: ["YYYY-MM-DD", 'day_of_the_week', days_until]

<<<<<<< HEAD
# Hint:
# This documentation will be useful: http://ruby-doc.org/stdlib-2.2.1/libdoc/date/rdoc/Date.html
=======
# Hint: 
# This documentation will be useful: http://ruby-doc.org/stdlib-2.2.1/libdoc/date/rdoc/Date.html	
>>>>>>> 2dd03dc72679342085081b1d96ee15718b1ae09c


# Examples:

# gigasecond(1988, 5, 15) # ["2020-01-22", "Wednesday", "1764 days left"]
# gigasecond(2015, 2, 17) # ["2046-10-26", "Friday", "11538 days left"]
<<<<<<< HEAD

require 'date'
def gigasecond(year, month, day)
  #Your Code Here!
  now = DateTime.now
  days = (10**9)/60/60/24
  birthday = DateTime.new(year, month, day)
  anniversary = (birthday + days)
  anniversary_date = anniversary.strftime("%Y-%m-%d")
  day = anniversary.strftime("%A")
  rem = ((anniversary - now).to_i).to_s + " days left"
  result = [anniversary_date, day, rem]

end

p gigasecond(2015, 2, 17)
=======
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
>>>>>>> 2dd03dc72679342085081b1d96ee15718b1ae09c
