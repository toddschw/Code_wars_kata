def tankvol(h, d, vt)

  # define some inputs
  diameter = d = d.to_f
  radius = r = (d/2.to_f)
  liquid_height = d - h.to_f
  tank_volume = vt.to_f
  pi = Math::PI
  area_of_circle = pi * r * r

  # puts "diameter = #{diameter}"
  # puts "radius = #{radius}"
  # puts "liquid height = #{liquid_height}"
  # puts "area of circle = #{area_of_circle}"

  # determine length of tank
  lenth_of_tank = (4.to_f * tank_volume) / ( pi * diameter * diameter )
  # puts "lenth of tank = #{lenth_of_tank}"

  # determine cross sectional area:
  # Use Formula A = ( (theta / 2 * pi ) * area_of_circle) - area of small triangle

  # Get distance from circle center to top of liquid
    distance_from_center_to_liquid = r - liquid_height
    # puts "distance_from_center_to_liquid = #{distance_from_center_to_liquid}"

    # Step 2 - Determine theta
    theta = Math::acos(distance_from_center_to_liquid/radius)
    # puts "theta is #{theta} radians"

    # Step 3 - get wedge area
    wedge = ((theta / (2.to_f * pi)) * area_of_circle)
    # puts "area of wedge is #{wedge}"

    # Step 4 - subtract trinagle from wedge
    cross_sectional_area = wedge - ( 0.5 * distance_from_center_to_liquid * Math::sin(theta) * radius )
    # puts "cross_sectional_area is #{cross_sectional_area}"

    # mult by 2
    full_area = cross_sectional_area * 2

    liquid_volume = full_area * lenth_of_tank
    # puts "liquid volume is #{liquid_volume}"

    remaining_volume = (vt.to_f - liquid_volume).truncate
    # puts "remaing volume is #{remaining_volume}"

    remaining_volume
end

__END__

Tank Truck, 6 kyu

To introduce the problem think to my neighbor who drives a tanker truck. The level indicator is down and he is worried because he does not know if he will be able to make deliveries. We put the truck on a horizontal ground and measured the height of the liquid in the tank.

Fortunately the tank is a perfect cylinder and the vertical walls on each end are flat. The height of the remaining liquid is h, the diameter of the cylinder is d, the total volume is vt (h, d, vt are positive or null integers). You can assume that h <= d.

Could you calculate the remaining volume of the liquid? Your function tankvol(h, d, vt) returns an integer which is the truncated result (e.g floor) of your float calculation.

Examples:

tankvol(40,120,3500) should return 1021 (calculation gives about: 1021.26992027)

tankvol(60,120,3500) should return 1750

tankvol(80,120,3500) should return 2478 (calculation gives about: 2478.73007973)

tankvol(5, 7, 3848)