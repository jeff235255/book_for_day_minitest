class BookForDay
  BOOKS = [
    "[Ruby] The ruby programming language.",
    "[Ruby] What is ruby language?",
    "[Ruby] What is minitest?",
    "[Ruby] Testing with Ruby.",
    "[Ruby] Learn to program.",
    "[Ruby] Ruby in a nutsheell.",
    "[Ruby] Ruby for rails.",
    "[Rails] Ruby on rails for beginer.",
    "[Rails] How to use rspec in Ruby on rails?",
    "[Rails] How to build a gem?",
    "[Rails] Deploying in rails apps with capistrano gem.",
    "[Rails] Build a simple blog with Ruby on rails." 
  ]

  def book_name
    BOOKS.sample
  end

  def get_random_book_names_for_day(number)
    BOOKS.sample number
  end

  def get_random_book_with_parameter_name(book_name)
    BOOKS.shuffle.each do |book|
      if book.include? book_name
        return book
      end
    end
    return ""
  end
end 