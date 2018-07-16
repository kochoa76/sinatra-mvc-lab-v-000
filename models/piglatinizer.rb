class PigLatinizer

  attr_accessor :words


  def piglatinize(word)
      match = word.match(/[aeiou]/)
     return word unless match
     pre = match.pre_match
     post = match.post_match
     return match.to_s + post + pre + "ay"
   end
end
