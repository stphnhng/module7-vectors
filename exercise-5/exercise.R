# Exercise 5: Vector practice

# Create a vector `words` of 6 (or more) words.
# You can Google for a "random word generator" if you wish!

words <- c("alive", "bob", "cat", "dog", "earl", "greight")

# Create a new vector `words.of.the.day` that is your `words` vector with the string
# "is the word of the day!" pasted on to the end.
# BONUS: Surround the word in quotes (single or double) (e.g., `"data" is the word of the day!`)

words.of.the.day <- paste("``",words,"is the word of the day!``")

# Create a vector `a.f.words` which are the elements in `words` that start with "a" through "f"
# Hint: use a comparison operator to see if the word comes before "f" alphabetically!
# Tip: make sure all the words are lower-case, and only consider the first letter of the word!

a.f.words <- words[substr(words,1,1) < 'f']

# Create a vector `g.m.words` which are the elements in `words` that start with "g" through "m"

g.m.words <- words[substr(words,1,1) >= 'g' & substr(words,1,1) <= 'm']

# Define a function `WordBin` that takes in three arguments: a vector of words, and two letters. The function
# should return a vector of words that go between those letters alphabetically.

WordBin <- function(words.func, letter.a, letter.b){
  return( words.func[substr(words.func,1,1) >= letter.a & substr(words.func,1,1) <= letter.b] )
}

# Use your `WordBin` function to determine which of your words start with "e" through "q"

WordBin(words,"e","q")

