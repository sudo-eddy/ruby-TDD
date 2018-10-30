#write your code here
def translate(input)
  input.split.map do |word|
    until word.start_with?('a', 'e', 'i', 'o', 'u')
      if word.start_with?('qu')
        word = word[2..-1] + 'qu'
      else
        word = word[1..-1] + word[0]
      end
    end
    word += 'ay'
  end.join(' ')
end

=begin
def translate phrase
  phrase.split.map do |word|

    # we are using "/x" to document this big fat regex
    word =~ /^     # beginning of string
    (
      [^aeiouyq]*  # any number of consonants in a row
      (qu)?        # or maybe a 'qu'
    )
    (.*)           # the rest of the string
    $/x            # end of string

    # $1, $2, etc. get filled with the parenthesized chunks
    # from the most recent regular expression match
    first_phoneme = $1
    rest_of_word = $3
    "#{rest_of_word}#{first_phoneme}ay"
  end.join(" ")
end

like this solution better but don't quite understand hy the $3???
=end 

