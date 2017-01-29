// Created a shot glass templates to add leters to
// Note that the volume of the container does not
// equal 1.5oz (typical shot)

difference()
{
    cylinder(35,10,17, center = true, $fn = 360);
    translate([0,0,-9],$fn = 360)cylinder(35,10,17);
}