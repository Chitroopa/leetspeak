class String
  define_method(:leetspeak) do
    split = self.split("")
    leetspeak = []
    split.each_with_index() do |letter, index|
     if letter.eql?("e")
        leetspeak.push(3)
      elsif letter.eql?("o")
        leetspeak.push(0)
      elsif letter.eql?("I")
        leetspeak.push(1)
      ## [index-1] for single string input represents the last letter and it represents the previous index for sentences with multiple words.
      elsif letter.eql?("s") && split[index-1].==(" ") || letter.eql?("s") && index.==(0)
        leetspeak.push("s")
      elsif letter.eql?("s") && split[index-1].!=(" ")
        leetspeak.push("z")
      else
        leetspeak.push(letter)
      end
    end
    leetspeak.join()
  end
end
