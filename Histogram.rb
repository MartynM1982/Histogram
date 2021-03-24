# Here we ask the user to provide us with some text.
puts "Text please: "
text = gets.chomp

# Here we split the string in to words.
words = text.split(" ")

# Now we need to start counting words using hash.
frequencies = Hash.new(0)

# Here we want to iterate over 'words' to add each word to the 'frequencies' hash.
words.each { |word| frequencies[word] += 1 }

# Now we have a hash of words and frequencies we need to sort the data.
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!

# We now iterate over the key value pairs and print
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }


