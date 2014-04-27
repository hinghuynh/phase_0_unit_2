# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: Lienha Carleton].

# 2. Pseudocode

# Input: title, topic, date, thesis_statement, pronoun
# Output: output a short paragraph about the topic.
# Steps: 
  # create condition for male or female pronouns
  # print title 
  # split topic name by first and last name
  # print text with date converted to string and include names, pronouns, thesis statement
  # where ever they apply.


# 3. Initial Solution
def essay_writer(title, topic, date, thesis_statment, pronoun)
  if pronoun == "male"
    first = "He"
    second = "him"
  else
    first = "She"
    second = "her"
  end
  puts title
  puts
  name = topic.split(" ")
  first_name = name[1]
  last_name = name[0]
  print "#{first_name} #{last_name} "
  print "was an important person in " + date.to_s + ". #{first} did a lot. I want to learn more about #{second}. " + thesis_statment + " #{last_name}'s contribution is important."
end

# 4. Refactored Solution

# I couldn't really figure out what to refactor in this solution. So I decided to keep my intitial solution.

# 1. DRIVER TESTS GO BELOW THIS LINE

p essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male") 

p essay_writer("One of the world's best-selling music artists", "Adams Bryan", 1984, "Adams was awarded the Order of Canada and the Order of British Columbia for contributions to popular music and philanthropic work via his own foundation, which helps improve education for people around the world.", "male")

p essay_writer("Hollywood's modern sex symbol", "Johansson Scarlett", 2003, "She is an American actress, model, and singer. She made her film debut in North (1994) and was later nominated for the Independent Spirit Award for Best Female Lead for her performance in Manny & Lo (1996), garnering further acclaim and prominence with roles in The Horse Whisperer (1998) and Ghost World (2001).", "female")

# 5. Reflection 

# At first I thought this might be an easy assigment, but then I realize there was a little complexity to it. 
# It took some time ti figure out how to use put "he" or "him" using the same input of male.  The other thing
# that took some time was utlizing the topic's first and last name seperate and out of order.  This wasn't that
# enjoyable of an assigment. I think it might of been because it was just all string manipulation. I found trying
# to create driver code most tedious.
