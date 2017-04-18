class String
  define_method(:leetspeak) do
    leet_array = []
    split_word = self.split("")
    split_word.each() do |letter|
      if letter.==("e")
        leet_array.push("3")
      elsif letter.==("o")
        leet_array.push("0")
      else
        leet_array.push(letter)
      end
    end
    leet_array.join()
  end
end
