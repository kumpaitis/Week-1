class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    sum = initial_value
    if block_given?
      @array.each { |el| sum += yield(el) }
    else
      @array.each { |el| sum += el}
    end
    sum
  end
end

