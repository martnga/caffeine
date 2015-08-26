# PAREN MATCHER
# LANGUAGE: RUBY
#
<<<<<<< HEAD
# Create a function paren_matcher(str) that takes the str parameter being passed and 
# returns true if the parentheses are correctly matched and each one is accounted for. Otherwise return false. 

# Examples: 
=======
# Create a function paren_matcher(str) that takes the str parameter being passed and
# returns true if the parentheses are correctly matched and each one is accounted for. Otherwise return false.

# Examples:
>>>>>>> 2dd03dc72679342085081b1d96ee15718b1ae09c
# paren_matcher("(hello (world))") #true
# paren_matcher("((hello (world))") #false
# paren_matcher("( ( (giraffe) & (rhino) )") #false
# paren_matcher("()())") #false
# paren_matcher(")(())()") #false

<<<<<<< HEAD
# Note: Only "(" and ")" will be used as parentheses. If str contains no parentheses return true. 


#your code goes here
=======
# Note: Only "(" and ")" will be used as parentheses. If str contains no parentheses return true.


#your code goes here
def paren_matcher(str)
  openers = 0
  closers = 0
  str.chars.each do |character|
    if character == '('
      openers += 1
    elsif character == ')'
      closers += 1
    end
    if closers > openers
      return false
    end
  end
  openers == closers
end
puts paren_matcher("((hello) (world(")
>>>>>>> 2dd03dc72679342085081b1d96ee15718b1ae09c
