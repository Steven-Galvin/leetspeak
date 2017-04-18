class String
  define_method(:leetspeak) do
    leet_array = []
    split_word = self.split("")


    split_word.each_with_index() do |letter, index|
      if letter.==("e")
        leet_array.push("3")
      elsif letter.==("o")
        leet_array.push("0")
      elsif letter.==("I")
        leet_array.push("1")
      elsif letter.==("s")
        if split_word[index-1].==(" ")
          leet_array.push(letter)
          else
            leet_array.push("z")
          end
      else
        leet_array.push(letter)
      end
      if leet_array[0].==("z")
        leet_array[0].replace("s")
      end
    end
    leet_array.join()

  end
end
