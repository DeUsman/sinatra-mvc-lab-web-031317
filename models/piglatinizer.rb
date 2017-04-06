class PigLatinizer

def piglatinize(word)

  vowels = %w[a e i o u]

  word.split("").each_with_index do |letter, index|
  
    if (index == 0 && vowels.include?(letter.downcase))
    return word + 'way'
    
    elsif (vowels.include?(letter.downcase))
    return word[index..-1] + word[0...index] + 'ay'
	end

  end
end
 

def to_pig_latin(sentence)
	sentence.split(" ").collect do |word|
	piglatinize(word)
	end.join(" ")
end

end