# frozen_string_literal: true
module ApplicationHelper
  def height_range(min, max)
    return unless min && max
    "#{display_number(min)} - #{display_number(max)} ft"
  end

  def display_number(value)
    number_with_precision(value, precision: 1, strip_insignificant_zeros: true)
  end

  def map_link(spot)
    link_to 'map', spot.map_url
  end
end
