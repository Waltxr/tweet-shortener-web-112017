def dictionary
  dictionary = {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  new_tweet = tweet.split(" ").map do |word|
    dictionary.keys.each do |key|
      if key.split(" ").include?(word.downcase)
      
        word = dictionary[key]
      end
    end
    word
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweet)
  shortened_tweets = tweet.map { |tweet| word_substituter(tweet)  }

  shortened_tweets.each { |tweet| puts tweet.to_s  }
end

def selective_tweet_shortener(tweet)

end

def shortened_tweet_truncator(tweet)

end
