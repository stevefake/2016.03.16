require 'minitest/autorun'  # => true
require_relative 'bob'      # => true

class BobTest < Minitest::Test  # => Minitest::Test
  def bob
    ::Bob.new                   # => #<Bob:0x007f836b9052b8>
  end                           # => :bob

  def feedback(text)
    "Bob hears #{text.inspect}, and.."
  end                                   # => :feedback

  def test_stating_something
    remark = 'Tom-ay-to, tom-aaaah-to.'                          # => "Tom-ay-to, tom-aaaah-to."
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end                                                            # => :test_stating_something

  def test_shouting
    remark = 'WATCH OUT!'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end                                                                   # => :test_shouting

  def test_shouting_gibberish
    skip
    remark = ('A'..'Z').to_a.shuffle[0, 10].join
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end                                                                   # => :test_shouting_gibberish

  def test_asking_a_question
    skip
    remark = 'Does this cryogenic chamber make me look fat?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end                                                         # => :test_asking_a_question

  def test_asking_a_numeric_question
    skip
    remark = 'You are, what, like 15?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end                                                        # => :test_asking_a_numeric_question

  def test_asking_gibberish
    skip
    remark = ('a'..'z').to_a.shuffle[0, 10].join << '?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end                                                        # => :test_asking_gibberish

  def test_talking_forcefully
    skip
    remark = "Let's go make out behind the gym!"
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end                                                            # => :test_talking_forcefully

  def test_using_acronyms_in_regular_speech
    skip
    remark = "It's OK if you don't want to go to the DMV."
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end                                                            # => :test_using_acronyms_in_regular_speech

  def test_forceful_questions
    skip
    remark = 'WHAT THE HELL WERE YOU THINKING?'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end                                                                   # => :test_forceful_questions

  def test_shouting_numbers
    skip
    remark = '1, 2, 3 GO!'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end                                                                   # => :test_shouting_numbers

  def test_only_numbers
    skip
    remark = '1, 2, 3'
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end                                                            # => :test_only_numbers

  def test_question_with_only_numbers
    skip
    remark = '4?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end                                                        # => :test_question_with_only_numbers

  def test_shouting_with_special_characters
    skip
    remark = 'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end                                                                   # => :test_shouting_with_special_characters

  def test_shouting_with_no_exclamation_mark
    skip
    remark = 'I HATE YOU'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end                                                                   # => :test_shouting_with_no_exclamation_mark

  def test_statement_containing_question_mark
    skip
    remark = 'Ending with ? means a question.'
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end                                                            # => :test_statement_containing_question_mark

  def test_prattling_on
    skip
    remark = 'Wait! Hang on. Are you going to be OK?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end                                                        # => :test_prattling_on

  def test_silence
    skip
    remark = ''
    assert_equal 'Fine. Be that way!', bob.hey(remark), feedback(remark)
  end                                                                     # => :test_silence

  def test_prolonged_silence
    skip
    remark = ' ' * rand(1..10)
    assert_equal 'Fine. Be that way!', bob.hey(remark), feedback(remark)
  end                                                                     # => :test_prolonged_silence

  def test_alternate_silences
    skip
    remark = "\t" * rand(1..10)
    assert_equal 'Fine. Be that way!', bob.hey(remark), feedback(remark)
  end                                                                     # => :test_alternate_silences

  def test_on_multiple_line_questions
    skip
    remark = %(
Does this cryogenic chamber make me look fat?
no)
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end                                                            # => :test_on_multiple_line_questions
end                                                              # => :test_on_multiple_line_questions

# >> Run options: --seed 50733
# >>
# >> # Running:
# >>
# >> SSSSSSSSSSSESSSSSSSS
# >>
# >> Finished in 0.002828s, 7072.4409 runs/s, 0.0000 assertions/s.
# >>
# >>   1) Error:
# >> BobTest#test_stating_something:
# >> NoMethodError: undefined method `hey' for #<Bob:0x007f836b9052b8>
# >>     /Users/stevefake/Desktop/iron_yard/2016.03.16_git_repo/bob_test.rb:15:in `test_stating_something'
# >>
# >> 20 runs, 0 assertions, 0 failures, 1 errors, 19 skips
# >>
# >> You have skipped tests. Run with --verbose for details.
