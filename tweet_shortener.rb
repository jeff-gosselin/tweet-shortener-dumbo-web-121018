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
    word = word.downcase
    if dictionary[word]
      array[i] = dictionary[word]
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  
  if selective_tweet_shortener(tweet).length > 140 
    selective_tweet_shortener(tweet)[0..139]
  else
    word_substituter(tweet)
  end
end