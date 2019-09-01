require('minitest')
require('minitest/autorun')
require('minitest/rg')
require_relative('../card_game.rb')
require_relative('../card.rb')
require('pry')

class CardGameTest < MiniTest::Test

  def setup
    @card1 = Card.new('diamonds', 1)
    @card2 = Card.new('clubs', 5)
    @card3 = Card.new('spades', 11)
    @card4 = Card.new('hearts', 8)

    @cards = [@card1, @card2, @card3, @card4]
  end

  def test_check_for_ace__1()
    assert_equal(true, CardGame.check_for_ace(@card1))
  end

  def test_check_for_ace__not_1()
    assert_equal(false, CardGame.check_for_ace(@card2))
  end

  def test_check_for_ace__11()
    assert_equal(false, CardGame.check_for_ace(@card3))
  end

  def test_highest_card__case1()
    result = CardGame.highest_card(@card2, @card4)
    assert_equal(@card4, result)
  end

  def test_highest_card__case2()
    result = CardGame.highest_card(@card1, @card3)
    assert_equal(@card3, result)
  end

  def test_cards_total()
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of: 25", result)
  end

end
