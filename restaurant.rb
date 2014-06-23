class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    sum = 0
    orders.each do |order| 
      order.each { |item, qty| sum += @menu[item] * qty }
    end
    sum
  end
end

