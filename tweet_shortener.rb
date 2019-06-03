# Write your code here.
def dictionary
  convert = {
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

def word_substituter(tweet_one)
    tweet_one.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |phrase|
    puts word_substituter(phrase)
  end
end

def selective_tweet_shortener(tweets)
    tweets.split(" ").map do |phrase|
    if phrase.length > 140
      word_substituter(phrase)
    elsif phrase.length = 130
      phrase
    end
  end
end