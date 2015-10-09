#!/usr/bin/env ruby

def substrings(str, dict)
    occurences = Hash.new(0); str.downcase!
    dict.each do |word|
        word.downcase!
       occurences[word] += str.scan(word).length if str.match(word)
    end
    occurences
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary) #=> {"it"=>2, "down"=>1, "how"=>2, "own"=>1, "going"=>1, "sit"=>1, "go"=>1, "i"=>3, "howdy"=>1, "partner"=>1, "part"=>1}
