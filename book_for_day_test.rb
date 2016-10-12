require 'minitest/autorun'
require_relative 'book_for_day'

class BookForDayTest < Minitest::Test
  def setup
    @book_for_day = BookForDay.new
  end

  def test_return_a_book_name
    assert @book_for_day.book_name
  end
  
  def test_predefined_books_is_array
    assert_kind_of Array, BookForDay::BOOKS
  end

  def test_predefined_books_is_not_empty
    refute_empty BookForDay::BOOKS
  end

  def test_return_a_book_name_includes_predefined
    assert_includes BookForDay::BOOKS, @book_for_day.book_name
  end
  
  def test_get_random_5_book_names_for_day
    assert_equal 5, @book_for_day.get_random_book_names_for_day(5).count
  end
  
  def test_get_random_ruby_book_for_day_is_empty
    assert_empty @book_for_day.get_random_book_with_parameter_name "not ruby"
  end

  def test_get_random_ruby_book_for_day_is_not_empty
    refute_empty @book_for_day.get_random_book_with_parameter_name "[Ruby]"
  end

  def test_get_random_rails_book_for_day_is_not_empty
    refute_empty @book_for_day.get_random_book_with_parameter_name "[Rails]"
  end
end
