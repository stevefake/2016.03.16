require 'minitest/autorun'  # => true
require_relative 'bob'      # => true

class BobTest < Minitest::Test  # => Minitest::Test
  def bob
    ::Bob.new                   # => #<Bob:0x007fb4c90ec5d8>, #<Bob:0x007fb4ca837bc0>, #<Bob:0x007fb4ca837170>, #<Bob:0x007fb4ca836680>, #<Bob:0x007fb4ca835848>, #<Bob:0x007fb4ca8346f0>, #<Bob:0x007fb4c89931b0>, #<Bob:0x007fb4c9107f18>, #<Bob:0x007fb4c9107220>, #<Bob:0x007fb4c9106028>, #<Bob:0x007fb4c91054c0>, #<Bob:0x007fb4c9104520>, #<Bob:0x007fb4c910fc40>, #<Bob:0x007fb4c910ed18>, #<Bob:0x007fb4c910e1d8>, #<Bob:0x007fb4c910d490>, #<Bob:0x007fb4c910c568>, #<Bob:0x007fb4c8921650>, #<Bob:0x007fb4c91175d0>, #<Bob:0x007fb4c91166d0>
  end                           # => :bob

  def feedback(text)
    "Bob hears #{text.inspect}, and.."  # => "Bob hears \"\", and..", "Bob hears \"Tom-ay-to, tom-aaaah-to.\", and..", "Bob hears \"WATCH OUT!\", and..", "Bob hears \"Ending with ? means a question.\", and..", "Bob hears \"Let's go make out behind the gym!\", and..", "Bob hears \"QWJGNHCFYL\", and..", "Bob hears \"4?\", and..", "Bob hears \"WHAT THE HELL WERE YOU THINKING?\", and..", "Bob hears \"It's OK if you don't want to go to the DMV.\", and..", "Bob hears \"fqnycdpgku?\", and..", "Bob hears \"\\nDoes this cryogenic chamber make me look fat?\\nno\", and..", "Bob hears \"1, 2, 3 GO!\", and..", "Bob hears \"Wait! Hang on. Are you going to be OK?\", and..", "Bob hears \"You are, what, like 15?\", and..", "Bob hears \"1, 2, 3\", and..", "Bob hears \"\\t\\t\\t\", and..", "Bob hears \"ZOMG THE %^*@\\\#$(*^ ZOMBIES ARE COMING!!11!!1!\", and..", "Bob hears \"I HATE YOU\", and..", "Bob hears \"     \", and..", "Bob hears \"Does this cryogenic chamber make me look fat?\", and.."
  end                                   # => :feedback

  def test_stating_something
    remark = 'Tom-ay-to, tom-aaaah-to.'                          # => "Tom-ay-to, tom-aaaah-to."
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)  # => true
  end                                                            # => :test_stating_something

  def test_shouting
    remark = 'WATCH OUT!'                                               # => "WATCH OUT!"
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)  # => true
  end                                                                   # => :test_shouting

  def test_shouting_gibberish
    remark = ('A'..'Z').to_a.shuffle[0, 10].join                        # => "QWJGNHCFYL"
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)  # => true
  end                                                                   # => :test_shouting_gibberish

  def test_asking_a_question
    remark = 'Does this cryogenic chamber make me look fat?'  # => "Does this cryogenic chamber make me look fat?"
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)   # => true
  end                                                         # => :test_asking_a_question

  def test_asking_a_numeric_question
    remark = 'You are, what, like 15?'                       # => "You are, what, like 15?"
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)  # => true
  end                                                        # => :test_asking_a_numeric_question

  def test_asking_gibberish
    remark = ('a'..'z').to_a.shuffle[0, 10].join << '?'      # => "fqnycdpgku?"
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)  # => true
  end                                                        # => :test_asking_gibberish

  def test_talking_forcefully
    remark = "Let's go make out behind the gym!"                 # => "Let's go make out behind the gym!"
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)  # => true
  end                                                            # => :test_talking_forcefully
# Test 8:
  def test_using_acronyms_in_regular_speech
    remark = "It's OK if you don't want to go to the DMV."       # => "It's OK if you don't want to go to the DMV."
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)  # => true
  end                                                            # => :test_using_acronyms_in_regular_speech

  def test_forceful_questions
    remark = 'WHAT THE HELL WERE YOU THINKING?'                         # => "WHAT THE HELL WERE YOU THINKING?"
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)  # => true
  end                                                                   # => :test_forceful_questions

  def test_shouting_numbers
    remark = '1, 2, 3 GO!'                                              # => "1, 2, 3 GO!"
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)  # => true
  end                                                                   # => :test_shouting_numbers

  def test_only_numbers
    remark = '1, 2, 3'                                           # => "1, 2, 3"
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)  # => true
  end                                                            # => :test_only_numbers

  def test_question_with_only_numbers
    remark = '4?'                                            # => "4?"
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)  # => true
  end                                                        # => :test_question_with_only_numbers

  def test_shouting_with_special_characters
    remark = 'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!'            # => "ZOMG THE %^*@\#$(*^ ZOMBIES ARE COMING!!11!!1!"
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)  # => true
  end                                                                   # => :test_shouting_with_special_characters
#Test 14:
  def test_shouting_with_no_exclamation_mark
    remark = 'I HATE YOU'                                               # => "I HATE YOU"
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)  # => true
  end                                                                   # => :test_shouting_with_no_exclamation_mark

  def test_statement_containing_question_mark
    remark = 'Ending with ? means a question.'                   # => "Ending with ? means a question."
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)  # => true
  end                                                            # => :test_statement_containing_question_mark

  def test_prattling_on
    remark = 'Wait! Hang on. Are you going to be OK?'        # => "Wait! Hang on. Are you going to be OK?"
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)  # => true
  end                                                        # => :test_prattling_on

  def test_silence
    remark = ''                                                           # => ""
    assert_equal 'Fine. Be that way!', bob.hey(remark), feedback(remark)  # => true
  end                                                                     # => :test_silence

  def test_prolonged_silence
    remark = ' ' * rand(1..10)                                            # => "     "
    assert_equal 'Fine. Be that way!', bob.hey(remark), feedback(remark)  # => true
  end                                                                     # => :test_prolonged_silence

  def test_alternate_silences
    remark = "\t" * rand(1..10)                                           # => "\t\t\t"
    assert_equal 'Fine. Be that way!', bob.hey(remark), feedback(remark)  # => true
  end                                                                     # => :test_alternate_silences

  def test_on_multiple_line_questions
    remark = %(
Does this cryogenic chamber make me look fat?
no)                                                              # => "\nDoes this cryogenic chamber make me look fat?\nno"
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)  # => true
  end                                                            # => :test_on_multiple_line_questions
end                                                              # => :test_on_multiple_line_questions

# >> Run options: --seed 43784
# >>
# >> # Running:
# >>
# >> "Fine. Be that way!"
# >> ."Whatever."
# >> ."Whoa, chill out!"
# >> ."Whatever."
# >> ."Whatever."
# >> ."Whoa, chill out!"
# >> ."Sure."
# >> ."Whoa, chill out!"
# >> ."Whatever."
# >> ."Sure."
# >> ."Whatever."
# >> ."Whoa, chill out!"
# >> ."Sure."
# >> ."Sure."
# >> ."Whatever."
# >> ."Fine. Be that way!"
# >> ."Whoa, chill out!"
# >> ."Whoa, chill out!"
# >> ."Fine. Be that way!"
# >> ."Sure."
# >> .
# >>
# >> Finished in 0.003546s, 5640.3201 runs/s, 5640.3201 assertions/s.
# >>
# >> 20 runs, 20 assertions, 0 failures, 0 errors, 0 skips
