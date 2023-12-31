# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# --------------------1) Create a method that takes in a number and determines if the number is even or odd. Use the test variables provided.

reposts1 = 7
# Expected output: '7 is odd'
reposts2 = 42
# Expected output: '42 is even'
reposts3 = 221
# Expected output: '221 is odd'

# Pseudo code:

# declare a method called even_or_odd that taking in a num parameter
def even_or_odd num
# create an if statement that evaluates if the number is even
    if (num % 2 == 0)
# if the number is even will return "(given number) is even"
        "#{num} is even"
# create an else statement that will evaluate if the number is not even
    elsif (num % 2 != 0)
# if the number is indeed not even will return "(given number) is odd"
        "#{num} is odd"
    end
end
# call on the method and provide the reposts variable as a parameter
p even_or_odd reposts1
p even_or_odd reposts2
p even_or_odd reposts3

# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. 
# HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete

beatles_album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
beatles_album2 = 'Sgt Pepper'
# Expected output: 'Sgt Pppr'
beatles_album3 = 'Abbey Road'
# Expected output: 'bby Rd'

# Pseudo code:
# declare a method called remove_vowels that taking in a string
def remove_vowels(string)
# declare a variable that includes the vowels we are looking for in both lowercase and uppercase 
    vowels = "aeiouAEIOU"
# use the delete built in method to itterate through the string and delete anyting that is in the vowels variable 
    string.delete(vowels)
end
# calls on the method and gives the variable that holds the string we will be itterating through
p(remove_vowels(beatles_album1))
p(remove_vowels(beatles_album2))
p(remove_vowels(beatles_album3))

# -------------------3) Create a method that takes in a string and checks if the string is a palindrome. A palindrome is the same word spelled forward or backward. Use the test variables provided.

palindrome_test_case1 = 'Racecar'
# Expected output: 'Racecar is a palindrome'
palindrome_test_case2 = 'LEARN'
# Expected output: 'LEARN is not a palindrome'
palindrome_test_case3 = 'Rotator'
# Expected output: 'Rotator is a palindrome'

# Pseudo code:
# declare a method called pal that takes in a string 
def pal(word)
# use .downcase to remove capital leters and evaluate if the word is the same when reversed 
    if word.downcase == word.downcase.reverse
# returns the given word "is a palindrome" if it is the same when reversed
        "#{word} is a palindrome"
# returns the given word "is not a palindrome" if it is not the same when reveresed 
    else "#{word} is not a palindrome"
    end
end
# calls on the method and provides the variable that holds the string to be evaluated.
p pal(palindrome_test_case1)