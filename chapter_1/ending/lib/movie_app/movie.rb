class Movie
  attr_reader :price, :title

  def initialize(price, title)
    @price = price
    @title = title
  end

  def charge(days_rented)
    price.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
    price.frequent_renter_points(days_rented)
  end
end
