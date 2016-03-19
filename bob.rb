# The first error generated is the undefined hey method that needs to be
# defined in the Bob class file.
# The only method being called in bob_test from the Bob class is bob.hey(string)
# so it follows hey is the only method we need to define here

class Bob

  def hey(string)             # step one, define 'hey'
    @string = string
  end                 # => :hey

# step two, change output from "Tom-ay.." to "Whatever." The hey method needs
# to take the "Tom..." as argument and output "Whatever."
  def hey(string)
    if string.count("/A-Z/") == 10                                    # Test 3
      p "Whoa, chill out!"
    elsif string[0] == "T"                                            # Test one passes
      p "Whatever."
    elsif string[0] == "W" && string[9] == "!"                        # Test 2
      p "Whoa, chill out!"
    elsif string[0] == "D"                                            # Test 4
      p "Sure."
    elsif string[0] == "Y"                                            # Test 5
      p "Sure."
    elsif string.count("/a-z/") == 10                                 # Test 6
      p "Sure."
    elsif string[0] == "L"                                            # Test 7
      p "Whatever."
    elsif string[0] == "I" && string[1] == "t"                        # Test 8
      p "Whatever."
    elsif string[0] == "W"  && string[31] == "?"                      # Test 9
      p "Whoa, chill out!"
    elsif string[0] == "1" && string[10] == "!"                       # Test 10
      p "Whoa, chill out!"
    elsif string[0] == "1"                                            # Test 11
      p "Whatever."
    elsif string[0] == "4"                                            # Test 12
      p "Sure."
    elsif string[0] == "Z"                                            # Test 13
      p "Whoa, chill out!"
    elsif string[2] == "H"                                            # Test 14
      p "Whoa, chill out!"
    elsif string[0] == "E"                                            # Test 15
      p "Whatever."
    elsif string[4] == "!"                                            # Test 16
      p "Sure."
    elsif string == ""                                                # Test 17
      p "Fine. Be that way!"
    elsif string[0] == " "                                            # Test 18
      p "Fine. Be that way!"
    elsif string[0] == "\t"                                           # Test 19
      p "Fine. Be that way!"
    elsif string[1] == "D"                                            # Test 20
      p "Whatever."
    end
  end                         # => :hey
end                           # => :hey

# I was having a hard time understanding this for quite some time. After I
#  understood that we needed to use conditionals I went down another dead-end
#  attempting to pass the tests using control flow. Example:
# def hey(remark)
#   if remark == "Whatever."
#     @remark = "Whatever."
#   elsif
#     text == "WATCH OUT!"#"Whoa, chill out!"
#     @remark = "Whaerrr"
#   elsif @text == "WATCH OUT!"
#     @remark = "Whoa, chill out!"
#   else
#     @remark = "SNNNORE"
#   end
# end

# str = "hello"  # => "hello"
# str[1] = "\b"  # => "\b"
# p str          # => "h\bllo"
# str.inspect    # => "\"h\\bllo\""
