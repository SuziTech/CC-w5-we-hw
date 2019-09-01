### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # function named in Camel case standard for Ruby is
                        # 'snake' case. Capital 'A' could cause problems -
                        # mistaken as part of Class definition?
    if card.value = 1   # '=' is assignment; '==' is a test of equivalence
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # 'dif' instead of 'def' typo for function definition.
  if card1.value > card2.value # no indentation after function def statement.
    return card # not card1 or card2 has to return one of them not just 'card'
  else
    return card2
  end
end # incorrect indentation throughout function definition.
end # this 'end' ends the class definition which is clearly not meant as there
    # is another function definition below which refers to 'self' which means
    # it should be within the class declaration as a class method. I have seen
    # a recommendation that class methods are declared at the top of the class
    # so this one is in the wrong place...

def self.cards_total(cards)
  total # this seems to be an initialiser but is not set to zero - 0 so is
        # meaningless.
  for card in cards
    total += card.value
    return "You have a total of" + total # should be a ': ' or just a space at
    # the end of the string otherwise the 'total' value will abut the text.
  end
end
```
