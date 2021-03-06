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

<<<<<<< HEAD
require 'csv'
def domestic_trade(id)
  result = 0
  amounts_array = []
  trans = CSV.read('TRANS.csv', headers:true, converters: :numeric)
  trans.each do |items|
   if items["code"] == id
     result += (items["amount"]).to_i
     amounts_array.push([((items["amount"]).to_i), items["store"]])
   end
  end
  amounts_array.sort
end
=======
def domestic_trade(itemId)
  # Your Code Here!
  rows = CSV.read('TRANS.csv')
  totalSales = 0
  total_loc = {}
  max_location = 0

	rows.each do |row|
		#newarr = row.split(",")
		location = row[0]


		id = row[1]
		if id == itemId
			totalSales = totalSales + row[2].to_f
		end

    if row[2].to_f > max_location #checks for max sales in loop
      max_location = row[2].to_f
    end
	end
	#max = total_loc.max_by{|key, value| value}[0]
	newhash = {'total KSH' => totalSales, 'largest loc' => max_location}

  puts newhash

  #puts largest
end

domestic_trade("DM1002")
>>>>>>> f972d675aa6310bc86c29a90b9da0964c9837e8f
