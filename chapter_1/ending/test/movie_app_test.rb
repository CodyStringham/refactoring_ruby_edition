require 'test_helper'

class MovieAppTest < Minitest::Test
  def test_customer_statement
    movie = Movie.new(NewReleasePrice.new, 'Minions')
    rental = Rental.new(movie, 5)
    customer = Customer.new('John')
    customer.add_rental(rental)

    statement_string = "Rental Record for John\n\tMinions\t15\nAmount owed is 15\nYou earned 2 frequent renter points"
    assert_equal statement_string, customer.statement

    movie = Movie.new(RegularPrice.new, 'Out Cold')
    rental2 = Rental.new(movie, 20)
    customer.add_rental(rental2)

    statement_string2 = "Rental Record for John\n\tMinions\t15\n\tOut Cold\t29.0\nAmount owed is 44.0\nYou earned 3 frequent renter points"

    assert_equal statement_string2, customer.statement
  end
end
