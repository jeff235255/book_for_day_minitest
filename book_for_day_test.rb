require 'minitest/autorun'
require_relative 'book_for_day'

class BookForDayTest < Minitest::Test
  def test_return_a_book_name
    book_for_day = BookForDay.new
    assert book_for_day.book_name
  end
end
