# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: Lienha Carleton].


# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it.

def translate_to_cipher(sentence)
  cipher = Hash[('a'..'z').to_a.zip(('a'..'z').to_a.rotate(4))]
  spaces = ["@", "#", "$", "%", "^", "&", "*"]
  encoded_sentence = []
  sentence.downcase.each_char do |element|
    if cipher.include?(element)
      encoded_sentence << cipher[element]
    elsif element == ' '
      encoded_sentence << spaces.sample
    else
      encoded_sentence << element
    end
  end
  return encoded_sentence.join
end

# Questions:
# 1. What is the .to_a method doing?
# convert strings into an array.
# 2. How does the rotate method work? What does it work on?
# rotate shifts element positions in array. It works on arrays.
# 3. What is `each_char` doing?
# iterating over each character.
# 4. What does `sample` do?
# it grabs random element in an array.
# 5. Are there any other methods you want to understand better?
# nothing in this exercise.
# 6. Does this code look better or worse than your refactored solution
#   of the original cipher code? What's better? What's worse?
# This code looks better. #It's shorter, but it doesn't
# contain as many conditions, as the the original cipher. This
# code doesn't change the value of numbers that Kim Jong Il exaggerates.
# 7. Is this good code? What makes it good? What makes it bad?
# This code is clean and efficient, but is not a complex reverse cipher
# of the original code cipher.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


# 5. Reflection
# Looking at this code, I was like OMG, I need to go modify my old code
# from exercise 6. This code really made me take it to the next level with
# refactoring. Unfortunately I was only able to shorten this code by
# two lines, but this exercise helped me massively shrink the code in exercise
# 6. Which I felt proud of after doing so. I enjoyed looking through this
# exercise, because it really made me rethink about how far you can refactor
# code.
