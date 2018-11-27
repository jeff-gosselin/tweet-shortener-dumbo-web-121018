require 'pry'
def dictionary
  sub = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split(/\s/)

  array.each_with_index do |word, i|
    if dictionary[word]
      array[i] = dictionary[word]
    end
  end
end