# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Gregory White

# Our Refactored Solution

def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => [8,0], "cake" => [6,0], "cookie" => [1,0]}
  
  has_fave = my_list.has_key? fav_food
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  end
  
  my_list[fav_food][1] = num_of_people / my_list[fav_food][0]
  num_of_people = num_of_people % my_list[fav_food][0]
  return "You need to make #{my_list[fav_food][1]} #{fav_food}(s)." if num_of_people == 0
  
  if num_of_people / my_list["pie"][0] > 0
    my_list["pie"][1] = num_of_people / my_list["pie"][0] 
    num_of_people = num_of_people % my_list["pie"][0] 
  elsif num_of_people / my_list["cake"][0] > 0
    my_list["cake"][1]= num_of_people / my_list["cake"][0]
    num_of_people = num_of_people % my_list["cake"][0]
  else
    my_list["cookie"][1] = num_of_people
    num_of_people = 0
  end
  return "You need to make #{my_list["pie"][1]} pie(s), #{my_list["cake"][1]} cake(s), and #{my_list["cookie"][1]} cookie(s)."
end

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
p bakery_num(3, "apples") # this will raise an ArgumentError

#  Reflection 
# This was the hardest assigment of the week, probably because I didn't look at the assigment in advance was 
# really struggling to understand the code while feeling the time constraint of a GPS. I really wanted to contribute
# more, but the approach that my partner took or thought of were not what I would have ideally done. So I 
# was trying to understand his approach and best accomodate him. I really liked the array in the key[value] of 
# hash approach that my partner thought of. I liked it so much, that I actually implemented it again in the virus 
# predictor exercise. This was the first time I paired with someone who was significantly higher IQ than me. 
# I enjoyed the experience immensely.


