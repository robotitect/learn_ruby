class Book
# write your code here

  def title()
    @title
  end

  def title=(title)
    new_title = ""
    title_array = title.split

    bad_list = ["and", "in", "the", "of", "a", "an", "The"]

    title_array.length.times do |i|
      word = title_array[i]
      if(i == 0 || !(bad_list.include?(word)))
        new_title += word.capitalize + " "
      else
        new_title += word + " "
      end
    end

    @title = new_title.strip
  end
end
