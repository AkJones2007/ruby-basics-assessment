# Assessment :: Ruby Basics


# Question 1: Ruby objects and classes.
# How would one find the class of the below objects.

"Hello World".class
33.class
65.89.class


# Question 2: Booleans
# What would be the result of executing the below statements

#if 63.4 < 64
#  puts "it's true"
#else
#  puts "it's false"
#end

    # This if statement is using the 'and' operator to compare two values,
    # which will evaluate to true if both values are truthy.
    # Since all values in Ruby are truthy except for 'false' and 'nil',
    # this will evaluate to true, thus printing "It's true" to the console.


# 2.1 Substitue "hello" && 4.5 for 33 && 55 above. What's the output?
    # 'It's true'

# 2.2 Substitue nil && 88 for 33 && 55 above. What's the output?
    # 'It's false'

# 2.4 Substitue 63.4 < 64. What's the output?
    # 'It's true'


# Question 3 :Strings

# How would you (Yes, you can look up the String methods!):

# 3.1. determine if a string is included another another string?
    "hello".include?("ll")

# 3.2. determine if the length of a string?
    "hello".length

# 3.3. Go from the string "eels in my hovercraft" to "fish in my sink" but don't
# change the string "eels in my hovercraft"
    str = "eels in my hovercraft"
    other_str = str.gsub("eels in my hovercraft", "fish in my sink")

# Question 4 : Variables
# Change the below string, do NOT make copies of the string. All changes
# to the string should be made in-place. (Unless told otherwise, like in 4.3.)

vehicle = "4 wheel Bus"

# 4.1 to "6 wheel Bus"
    vehicle.gsub!("4", "6")

# 4.2 to "6 wheel tank"
    vehicle.gsub!("Bus", "tank")

# 4.3 Create a NEW string from the string in 4.2 that will be
# "6 wheel tank that shoots rainbow bunnnies"
    new_vehicle = vehicle + " that shoots rainbow bunnies"


# Question 5 : Loop
# - write a loop that guesses your age.
# - Only allow 4 guesses
# - Notify the user if they guess correctly OR if they run out of turns to guess
# - Get mad and curse the fingers that thought you where that old,
# - aaaah maaan c'mon, huh, WTF
# - I'm not kidding, say unkind works to a user that thinks your 10 years older
#   than you are.

age = 26
i = 0
answer = nil

while i < 4

  print "Guess my age! "
  answer = gets

  if answer.to_i == age
    print "Hey, you're right!\n"
    break
  elsif answer.to_i > age + 10
    print "Hey, fuck you man, you really think I'm that old?!\n"
  elsif answer.to_i < age - 10
    print "Do I look like a teenager to you bro?\n"
  else
    print "Close!\n"
  end

  i += 1

  if i == 4
    print "Sorry, you only get 4 tries!\n"
  end

end

# Bonus Question: Who said this?

# The great enemy of the truth is very often not the lie -- deliberate, contrived
# and dishonest, but the myth, persistent, persuasive, and unrealistic.
# Belief in myths allows the comfort of opinion without the discomfort of thought.

    # Former U.S. President, John F. Kennedy
