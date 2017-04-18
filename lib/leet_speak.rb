class String
  define_method(:leetspeak) do
    leet_array = []
    split_word = self.split("")

    if split_word.at(0) == ("s")
      split_word.shift()
      split_word.unshift("~")
    end

    split_word.each() do |letter|
      if letter.==("e")
        leet_array.push("3")
      elsif letter.==("o")
        leet_array.push("0")
      elsif letter.==("I")
        leet_array.push("1")
      elsif letter.==("s")
        leet_array.push("z")
      elsif letter.==("~")
        leet_array.push("s")

      else
        leet_array.push(letter)
      end
    end
    leet_array.join()
  end
end
