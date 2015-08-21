# DOMESTIC TRADE
# LANGUAGE: RUBY

# You have been hired by a trade company to write a program.

# They have given you a CSV (comma separated value, used in spreadsheets) file containing sales data by transaction 
#for 10,000 sales transactions.

# Write a function that calculates the grand total of sales for a given item across all stores.

# Your output should be in a form of a hash, with total_KSH as a key and the total as a value.

# Additionally, the company wants to know which store location made the largest sales for that item. Add that as another hash key-value pair.

# Notes:
#  - Check out this website for an intro to handling CSV files: http://www.sitepoint.com/guide-ruby-csv-library-part/

# Example:

#   Given a `TRANS.csv` of:

#   store,sku,amount
#   Nairobi,DM1210,7000 KSH
#   Nairobi,DM1182,1968 KSH
#   Naivasha,DM1182,5858 KSH
#   Mombasa,DM1210,6876 KSH
#   Nakuru,DM1182,5464 KSH

# If we enter 'DM1182', you program should return:
# {:total_KSH=> 13290, :largest=> 'Nairobi'}.
require 'csv'

def domestic_trade(itemId)
  # Your Code Here!
  rows = CSV.read('Trans.csv')
  totalSales = 0
  totalloc = {}

	rows.each do |row|
		newarr = row.split(",")
		location = newarr[0]

		id = newarr[1]
		if id == itemId
			totalSales += newarr[2].to_f
			if !total_loc[location]
        		total_loc[location] = amount
     		else
        		total_loc[location] += amount
      		end
		end 
	end
	max = total_loc.max_by{|key, value| value}[0]
	return {:total_KSH => totalSales, :largest => max}
end
