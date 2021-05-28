gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'
require 'test/unit'

class HouseTest < Minitest::Test

  def test_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, House.new.line(1)
  end

  def test_line_2
    # skip
    expected = "This is the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(2)
  end

  def test_line_3
   
    expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(3)
  end

  def test_line_4
    # skip
    expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(4)
  end

  def test_line_5

    expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(5)
  end

  def test_line_6
 
    expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(6)
  end

  def test_line_7

    expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(7)
  end

  def test_line_8
    # skip
    expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(8)
  end

  def test_line_9
    # skip
    expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(9)
  end

  def test_line_10
    # skip
    expected = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(10)
  end

  def test_line_11
    # skip
    expected = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(11)
  end

  def test_line_12
    # skip
    expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(12)
  end

  def test_all_the_lines
    # skip
    expected = <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, House.new.recite
  end


def test_thar_be_line_1
    expected = "Thar be the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(1)
  end

  def test_thar_be_line_2
    # skip
    expected = "Thar be the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(2)
  end

  def test_thar_be_line_3
   
    expected = "Thar be the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(3)
  end

  def test_thar_be_line_4
    # skip
    expected = "Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(4)
  end

  def test_thar_be_line_5

    expected = "Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(5)
  end

  def test_thar_be_line_6
 
    expected = "Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(6)
  end

  def test_thar_be_line_7

    expected = "Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(7)
  end

  def test_thar_be_line_8
    # skip
    expected = "Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(8)
  end

  def test_thar_be_line_9
    # skip
    expected = "Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(9)
  end

  def test_thar_be_line_10
    # skip
    expected = "Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(10)
  end

  def test_thar_be_line_11
    # skip
    expected = "Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(11)
  end

  def test_thar_be_line_12
    # skip
    expected = "Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected,House.new("Thar be").line(12)
  end

  def test_thar_be_this_is_random_order
     expected_thar_be = <<-TEXT
Thar be the house that Jack built.

Thar be the malt that lay in the house that Jack built.

Thar be the rat that ate the malt that lay in the house that Jack built.

Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT


expected_this_is = <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT

expected_subject_verb_switch = <<-TEXT 
Thar be the ate that rat the house that Jack built.

Thar be the worried that dog the kissed all tattered and torn that man the house that Jack built.

Thar be the lay that malt in the belonged that horse and the hound and the horn to the married all shaven and shorn that priest the house that Jack built.

Thar be the Jack that house built the killed that cat the crowed that rooster in the work that morn the kissed all tattered and torn that man the house that Jack built.

Thar be the crowed that rooster in the work that morn the Jack that house built the belonged that horse and the hound and the horn to the kissed all tattered and torn that man the sowing farmer his kept that corn the house that Jack built.

Thar be the kissed all tattered and torn that man the crowed that rooster in the work that morn the ate that rat the milked all forlorn that maiden the worried that dog the killed that cat the house that Jack built.

Thar be the lay that malt in the crowed that rooster in the work that morn the Jack that house built the sowing farmer his kept that corn the milked all forlorn that maiden the ate that rat the worried that dog the house that Jack built.

Thar be the crowed that rooster in the work that morn the ate that rat the married all shaven and shorn that priest the belonged that horse and the hound and the horn to the worried that dog the tossed with the crumpled horn that cow the Jack that house built the kissed all tattered and torn that man the house that Jack built.

Thar be the milked all forlorn that maiden the kissed all tattered and torn that man the belonged that horse and the hound and the horn to the lay that malt in the married all shaven and shorn that priest the tossed with the crumpled horn that cow the Jack that house built the crowed that rooster in the work that morn the ate that rat the house that Jack built.

Thar be the sowing farmer his kept that corn the crowed that rooster in the work that morn the worried that dog the Jack that house built the ate that rat the kissed all tattered and torn that man the belonged that horse and the hound and the horn to the tossed with the crumpled horn that cow the milked all forlorn that maiden the killed that cat the house that Jack built.

Thar be the belonged that horse and the hound and the horn to the tossed with the crumpled horn that cow the married all shaven and shorn that priest the killed that cat the kissed all tattered and torn that man the Jack that house built the ate that rat the worried that dog the lay that malt in the sowing farmer his kept that corn the crowed that rooster in the work that morn the house that Jack built.

Thar be the married all shaven and shorn that priest the belonged that horse and the hound and the horn to the killed that cat the kissed all tattered and torn that man the milked all forlorn that maiden the Jack that house built the tossed with the crumpled horn that cow the crowed that rooster in the work that morn the sowing farmer his kept that corn the worried that dog the lay that malt in the ate that rat the house that Jack built.
TEXT
    
    refute_equal expected_this_is, RandomHouse.new('This is').recite, "Phrasese are the same"
    refute_equal expected_this_is, RandomHouse.new('Thar be').recite, "Phrasese are the same"
    refute_equal expected_subject_verb_switch, RandomHouse.new('This is').recite, "Phrasese are the same"
    refute_equal expected_subject_verb_switch, RandomHouse.new('Thar be').recite, "Phrasese are the same"
    
  end

def test_subject_verb_switch
    phrase1 = 'the belonged that horse and the hound and the horn to'
    phrase2 ='the sowing farmer his kept that corn'
    phrase3 ='the crowed that rooster in the work that morn'
    phrase4 ='the married all shaven and shorn that priest'
    phrase5 ='the kissed all tattered and torn that man'
    phrase6 ='the milked all forlorn that maiden'
    phrase7 ='the tossed with the crumpled horn that cow'
    phrase8 = 'the worried that dog'
    phrase9 ='the killed that cat'
    phrase10 ='the ate that rat'
    phrase11 ='the lay that malt in'
    phrase12 ='the Jack that house built'
   
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase1)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase2)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase3)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase4)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase5)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase6)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase7)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase8)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase9)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase10)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase11)
    assert RandomVerbClauseHouse.new("Thar be").recite.include?(phrase12)

end

  def test_thar_be_all_the_lines
    # skip
    expected = <<-TEXT
Thar be the house that Jack built.

Thar be the malt that lay in the house that Jack built.

Thar be the rat that ate the malt that lay in the house that Jack built.

Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    
    assert_equal expected, House.new("Thar be").recite
  end  

end