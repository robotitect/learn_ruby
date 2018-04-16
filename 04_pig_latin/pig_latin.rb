#write your code here

def translate(string)
  returnString = ""
	words = string.split(" ");

  words.each do |word|
    # returnString += " "
    returnString += convert(word)
    returnString += " "
  end

	returnString.strip
end

def convert(word)
  toReturn = ""
	# if(/[aeiou]/.match(word) == 0)
  if((word =~ /[aeiou]/) == 0)
	  toReturn = word + "ay"
	else
		beginIndex = 0;
		endIndex = beginIndex;

		while((word[endIndex + 1] =~ (/[b-df-hj-np-tv-z]/)) == 0)
			endIndex += 1
    end

		if(word[endIndex] == "q" || word[endIndex] == "Q" && word.charAt[endIndex + 1] == "u")
			endIndex += 1;
    end

		# newWordArray =
		# [
		# 	...word.slice(endIndex + 1),
		# 	...word.slice(0, endIndex + 1),
		# 	..."ay"
		# ]
		# newWordArray.join("");

    toReturn = word.slice(endIndex + 1..-1) + word.slice(0..endIndex) + "ay"
  end
  toReturn
end
