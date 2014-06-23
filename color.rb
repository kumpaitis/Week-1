class Color
  MIN_BRIGHT_DIFF = 125
  MIN_HUE_DIFF = 500
  attr_reader :r, :g, :b

  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    ( 299*@r + 587*@g + 114*@b) / 1000 
  end

  def brightness_difference(another_color)
    another_color.brightness_index - brightness_index 
  end

  def hue_difference(another_color)
    (another_color.r - @r).abs + (another_color.g - @g).abs + (another_color.b - @b).abs
  end

  def enough_contrast?(another_color)
    return true if brightness_difference(another_color) > MIN_BRIGHT_DIFF && hue_difference(another_color) > MIN_HUE_DIFF
    return false
  end
end

