#write your code here

def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(*args)
  string = args[0]
  toReturn = string + " " + string
  if(args.length > 1)
    n = args[1] - 2
    n.times do
      toReturn += " " + string
    end
  end
  toReturn.chomp
end

def start_of_word(word, n)
  word.slice(0, n)
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  sentence_array = sentence.split
  sentence_array.length.times do |i|
    word = sentence_array[i]
    if(word != "and" && word != "the" && word != "over" || i == 0)
      sentence_array[i] = sentence_array[i].capitalize
    end
  end
  sentence_array.join(" ")
end
