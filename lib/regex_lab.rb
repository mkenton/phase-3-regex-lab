def starts_with_a_vowel?(word)
 word.match(/\b[aeiouAEIOU]\w*\b/)?  true : false
 #word boundary ... any vowel upper or lower case ... zero or more word characters... word boundary
end

def words_starting_with_un_and_ending_with_ing(text)
 text.scan(/\bun\w*ing\b/)
 # "un" .... zero or word characters ... word boundary
end

def words_five_letters_long(text)
text.scan(/\b\w{5}\b/)
# word boundary ... any 5 word characters in a row ... word boundary
end


def first_word_capitalized_and_ends_with_punctuation?(text)
text.match(/^[A-Z].*[^\w]$/)? true : false
# line starts with Capital letter ... zero or more characters... any non-word character (might allow for odd symbols but works for punctation)... end of line.
end

def valid_phone_number?(phone)
phone.match(/^\D*\d{3}\D*\d{3}\D*\d{4}\D*$/)
# line start ... zero or more non-digit characters ... 3 digits .. zero or more non-digit characters ... 3 digits ... zero or more non-digit characters... 4 digits ... zero or more non-digits to end
#in essence, contains exactly 10 digits in 3-3-4 pattern, formatted however.
end
